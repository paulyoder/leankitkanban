module LeanKitKanban
  module Board
    include HTTParty

    ALL_BOARDS  = "/Boards"
    ONE_BOARD   = "/Boards/{boardID}"
    IDENTIFIERS = "/Board/{boardID}/GetBoardIdentifiers"

    def self.all
      get(ALL_BOARDS)
    end

    def self.find(board_id)
      api_call = ONE_BOARD.gsub("{boardID}", board_id.to_s)
      get(api_call)
    end

    def self.get_identifiers(board_id)
      api_call = IDENTIFIERS.gsub("{boardID}", board_id.to_s)
      get(api_call)
    end

    private
    def self.get(api_call)
      url      = "#{LeanKitKanban::Config.uri}#{api_call}"
      response = super(url, LeanKitKanban::Config.basic_auth_hash)
      parse_body(response.body)
    end

    def self.parse_body(body)
      json_data = JSON.parse body
      json_data["ReplyData"]
    end
  end
end
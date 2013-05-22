module LeanKitKanban
  module Card
    include HTTParty
    include LeanKitRequest

    DELETE_CARD   = "/Board/{boardID}/DeleteCard/{cardID}"
    FIND_CARD     = "/Board/{boardID}/GetCard/{cardID}"
    FIND_CARD_EXT = "/Board/{boardID}/GetCardByExternalId/{externalID}"
    CARD_HISTORY  = "/Card/History/{boardID}/{cardID}"

    def self.delete(board_id, card_id)
      api_call = DELETE_CARD.gsub("{boardID}", board_id.to_s).gsub("{cardID}", card_id.to_s)
      get(api_call)
    end

    def self.find(board_id, card_id)
      api_call = FIND_CARD.gsub("{boardID}", board_id.to_s).gsub("{cardID}", card_id.to_s)
      get(api_call)
    end

    def self.find_by_external_id(board_id, external_id)
      api_call = FIND_CARD_EXT.gsub("{boardID}", board_id.to_s).gsub("{externalID}", external_id.to_s)
      get(api_call)
    end

    def self.get_history(board_id, card_id)
      api_call = CARD_HISTORY.gsub("{boardID}", board_id.to_s).gsub("{cardID}", card_id.to_s)
      get(api_call)
    end 
  end
end

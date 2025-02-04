-- Load the configuration
require 'config'

local function isCommand(message)
    return message:sub(1, 1) == '/'
end

local function sendChatMessage(message)
    TriggerEvent('chat:addMessage', {
        args = { message }
    })
end

local function generateResponse(input)
    -- Normalize input to lowercase for matching
    local normalizedInput = input:lower()

    -- Check if we have a predefined response
    if Config.Responses[normalizedInput] then
        return Config.Responses[normalizedInput]
    else
        return Config.DefaultResponse
    end
end

AddEventHandler('chatMessage', function(source, name, message)
    -- Check if the message is a command
    if isCommand(message) then
        return -- Ignore commands
    end

    -- Generate a response based on the player's message
    local response = generateResponse(message)

    -- Send the response back to the chat
    sendChatMessage(Config.BotName .. ": " .. response)
end)
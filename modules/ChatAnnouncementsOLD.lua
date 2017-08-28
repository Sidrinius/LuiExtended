------------------
-- ChatAnnouncements namespace
LUIE.ChatAnnouncements = {}

-- Performance Enhancement
local CA             = LUIE.ChatAnnouncements
local E              = LUIE.Effects
local printToChat    = LUIE.PrintToChat
local strfmt         = string.format
local strformat      = zo_strformat
local gsub           = string.gsub

local moduleName     = LUIE.name .. "_ChatAnnouncements"

CA.Enabled = false
CA.D = {
    AchievementCategory1          = true,
    AchievementCategory10         = true,
    AchievementCategory11         = true,
    --AchievementCategory12         = true,
    AchievementCategory2          = true,
    AchievementCategory3          = true,
    AchievementCategory4          = true,
    AchievementCategory5          = true,
    AchievementCategory6          = true,
    AchievementCategory7          = true,
    AchievementCategory8          = true,
    AchievementCategory9          = true,
    AchievementsProgressMsg       = "[Achievement Updated]",
    AchievementsCompleteMsg       = "[Achievement Completed]",
    AchievementsColorProgress     = true,
    AchievementsColor             = { 0.25, 0.5, 1, 1 },
    AchievementsCompPercentage     = false,
    AchievementsProgress          = true,
    AchievementsComplete          = true,
    AchievementsIcon              = true,
    AchievementsCategory          = true,
    AchievementsSubcategory       = true,
    AchievementsDetails           = true,
    AchievementsBracketOptions    = 1,
    AchievementsStep              = 10,
    CurrencyAPShowChange           = true,
    CurrencyAPColor            = { 0.164706, 0.862745, 0.133333, 1 },
    CurrencyAPFilter           = 0,
    CurrencyAPName             = GetString(SI_LUIE_CA_CURRENCY_ALLIANCE_POINT),
    CurrencyAPThrottle         = 0,
    ChangeColorDown               = { 0.7, 0, 0, 1 },
    ChangeColorUp                 = { 0.043137, 0.380392, 0.043137, 1 },
    ChatPlayerDisplayOptions      = 2,
    CurrencyBracketDisplayOptions = 1,
    CurrencyContextMessageDown    = "",
    CurrencyContextMessageUp      = "",
    CurrencyContextToggle         = false,
    CurrencyIcons                 = true,
    CurrencyTotalMessage          = GetString(SI_LUIE_CA_DEFAULTVARS_CURRENCYTOTALMESSAGE),
    DisguiseAlertColor            = { 1, 0, 0, 1 },
    EnableCustomStrings           = true,
    Experience                    = true,
    ExperienceColorLevel          = true,
    ExperienceContextName         = GetString(SI_LUIE_CA_DEFAULTVARS_EXPERIENCECONTEXTNAME),
    ExperienceDisplayOptions      = 1,
    ExperienceEnlightened         = false,
    ExperienceFilter              = 0,
    ExperienceHideCombat          = false,
    ExperienceIcon                = true,
    ExperienceLevelUp             = true,
    ExperienceName                = "XP",
    ExperienceProgressColor       = true,
    ExperienceProgressName        = GetString(SI_LUIE_CA_DEFAULTVARS_EXPERIENCEPROGRESSNAME),
    ExperienceShowDecimal         = true,
    ExperienceShowLevel           = true,
    ExperienceShowPBrackets       = true,
    ExperienceShowProgress        = true,
    ExperienceThrottle            = 0,
    CurrencyGoldChange                    = true,
    CurrencyGoldColor                     = { 1, 1, 0.2, 1 },
    CurrencyGoldFilter                    = 0,
    CurrencyGoldHideAH               = false,
    CurrencyGoldName                      = GetString(SI_CURRENCY_GOLD),
    CurrencyGoldThrottle                  = true,
    GroupChatMsg                  = false,
    GroupLFG                      = false,
    GroupLFGComplete              = false,
    GroupRaid                     = false,
    GroupRaidScore                = false,
    GroupVote                     = false,
    GuildRankDisplayOptions       = 1,
    ItemBracketDisplayOptions     = 1,
    ItemContextMessage            = "",
    ItemContextToggle             = false,
    LevelUpIcon                   = true,
    LevelTotalIcon                = true,
    Loot                          = true,
    LootBank                      = true,
    LootBlacklist                 = false,
    LootTotal                     = false,
    LootTotalString               = GetString(SI_LUIE_CA_DEFAULTVARS_CURRENCYTOTALMESSAGE),
    
    Collectible                   = false,
    CollectiblePrefix             = "[Collectible Added]",
    CollectibleIcon               = false,
    CollectibleColor              = { 0, 1, 1, 1 },
    CollectibleBracketOptions     = 1,
    CollectibleAbbreviate         = false,
    CollectibleAbbreviatePrefix   = "Unlocked",
    
    Lorebook                      = false,
    LorebookPrefix1               = "[Lorebook Discovered]",
    LorebookPrefix2               = "[Motif Learned]",
    LorebookPrefix3               = "[Book Discovered]",
    LorebookIcon                  = false,
    LorebookColor                 = { 0, 1, 1, 1 },
    LorebookNoShowHide            = false,
    LorebookCategory              = false,
    LorebookBracketOptions        = 1,
    LorebookNumber                = false,
    LorebookNumberColor           = false,
    
    LootCraft                     = true,
    LootCurrencyCombo             = false,
    LootGroup                     = true,
    LootIcons                     = true,
    LootMail                      = true,
    LootNotTrash                  = true,
    LootOnlyNotable               = false,
    LootShowArmorType             = false,
    LootShowStyle                 = false,
    LootShowTrait                 = true,
    LootTrade                     = true,
    LootVendor                    = true,
    MiscBags                      = false,
    MiscConfiscate                = false,
    MiscDisguise                  = true,
    MiscDisguiseAlert             = true,
    MiscDisguiseOption            = 3,
    MiscDuel                      = false,
    MiscDuelStartOptions          = 1,
    MiscGuild                     = false,
    MiscGuildIcon                 = false,
    MiscGuildMOTD                 = false,
    MiscGuildRank                 = false,
    MiscHorse                     = false,
    MiscLockpick                  = false,
    MiscMail                      = false,
    MiscMara                      = false,
    MiscSocial                    = false,
    MiscTrade                     = false,
    MiscStuck                     = false,
    Quest                         = false,
    QuestCSA                      = true,
    QuestFailure                  = false,
    QuestIcon                     = false,
    QuestLogFull                  = false,
    QuestLong                     = false,
    QuestObjectiveLong            = false,
    QuestPOICompleted             = false,
    QuestPOIDiscovery             = false,
    QuestObjectiveDiscovery       = false,
    QuestShare                    = true,
    ShowConfiscate                = false,
    ShowCraftUse                  = false,
    ShowDestroy                   = false,
    ShowDisguise                  = false,
    ShowLockpickBreak             = false,
    ShowLootFail                  = false,
    CurrencyTVChange             = true,
    CurrencyTVColor              = { 0.368627, 0.643137, 1, 1 },
    CurrencyTVFilter             = 0,
    CurrencyTVName               = GetString(SI_LUIE_CA_CURRENCY_TELVAR_STONE),
    CurrencyTVThrottle           = 0,
    CurrencyAPShowTotal      = true,
    CurrencyGoldShowTotal               = true,
    CurrencyTVShowTotal        = true,
    CurrencyWVShowTotal        = true,
    CurrencyWVChange             = true,
    CurrencyWVColor              = { 1, 1, 1, 1 },
    CurrencyWVName               = GetString(SI_LUIE_CA_CURRENCY_WRIT_VOUCHER),
}

local g_tradeDisablePrint         = false -- Toggled on when a trade is completed, causing item updates to be suspended to allow our trade item changes printing to work.
local g_isLooted                  = false -- This value is false by default, and toggled on only by on_loot_received being triggered. It replaces the [Received] context message in Item updates with [Looted]
local g_weAreInAStore             = false -- Toggled on when the player opens a store, this sends information to our indexing function to not show changes to inventory and let sell events handle it
local g_currentDisguise
local g_disguiseState
local g_bankStacks                = {} -- Called for indexing on opening crafting window (If the player decons an item from the bank - not needed for bank, since we don't care about items in the bank)
local g_banksubStacks             = {} -- Called for indexing on opening crafting window (If the player decons an item from the bank - not needed for bank, since we don't care about items in the bank)
local g_equippedStacks            = {} -- Called for indexing on init
local g_inventoryStacks           = {} -- Called for indexing on init
local g_JusticeStacks             = {} -- Filled during justice confiscation to compare item changes
local g_XPCombatBufferString      = ""
local g_XPCombatBufferValue       = 0
local g_comboString               = "" -- String is filled by the EVENT_CURRENCY_CHANGE events and amended onto the end of purchase/sales from LootLog component if toggled on!
local g_craftStacks               = {}
local g_areWeGrouped              = false
local g_stopGroupLeaveQueue       = false
local g_groupFormFudger           = false
local g_groupJoinFudger           = false -- Controls message for group join
local g_joinLFGOverride           = false
local g_leaveLFGOverride          = false
local g_guildBankCarryGainorloss  = ""
local g_guildBankCarryIcon        = ""
local g_guildBankCarryItemLink    = ""
local g_guildBankCarryItemType    = ""
local g_guildBankCarryLogPrefix   = ""
local g_guildBankCarryReceivedBy  = ""
local g_guildBankCarryStackCount  = 1
local g_guildJoinFudger           = false
local g_guildRankData             = {} -- Variable to store local player guild ranks, for guild rank changes.
local g_isValidLaunder            = false
local g_itemReceivedIsQuestReward = false -- Variable gets set to true when a quest reward is received, flags in loot function to update the context string.
local g_itemString1Gain           = ""
local g_itemString2Gain           = ""
local g_itemString1Loss           = ""
local g_itemString2Loss           = ""
local g_itemWasDestroyed          = false
local g_lockpickBroken            = false
local g_lastPercentage            = {} -- Here we will store last displayed percentage for achievement
local g_launderCheck              = false
local g_launderGoldstring         = ""
local g_launderItemstring         = ""
local g_mailCOD                   = 0
local g_mailCODBackup             = 0 -- Saved value if mail sent results in an error, restores correct values
local g_mailCurrencyCheck         = true
local g_mailMoney                 = 0
local g_mailMoneyBackup           = 0 -- Saved value if mail sent results in an error, restores correct values
local g_mailStacks                = 0
local g_mailStacksOut             = {}
local g_mailStop                  = false
local g_mailStringPart1           = ""
local g_oldItemLink               = ""
local g_playerName                = nil
local g_playerNameFormatted       = nil
local g_postageAmount             = 0
local g_questIndex                = { }
local g_QuestShareFudger          = false
local g_saveMailId                = "" -- If the player takes a mail and cannot loot all the items, the index is cleared. This value will save the ID of the last opened mail and reuse it if the mail still has more items to loot.
local g_showActivityStatus        = true
local g_showRCUpdates             = true
local g_stealString               = ""
local g_savedQueueValue           = 0 -- Variable to determine if we are in queue
local g_CurrencyGoldThrottle              = 0 -- Held value for gold throttle
local g_CurrencyAPThrottle     = 0 -- Held value for AP throttle
local g_CurrencyTVThrottle       = 0 -- Held value for TV throttle
local g_telVarStoneMaxSave        = 0 -- We also have to pass the current total TV stones as there isn't a function to determine how many TV you have
local g_smithing                  = {} -- Table for smithing mode
local g_enchanting                = {} -- Table for enchanting mode
local g_weAreInMail               = false -- Toggled on when looting mail to prevent notable item display from hiding items acquired.
local g_rcSpamPrevention          = false -- Stops LFG failed ready checks from spamming the player
local g_LFGJoinAntiSpam           = false -- Stops LFG join messages from spamming the player when a group already in an activity is queueing
local g_rcUpdateDeclineOverride   = false -- Variable set to true for 5 seconds when a LFG group joing event happens, this prevents RC declined messages from erroneously appearing after solo joining an in progress LFG group.
local g_lfgDisableGroupEvents     = false

-- When quest XP is gained during dialogue the player doesn't actually level up until exiting the dialogue.
-- The variables get stored and saved to print on levelup if this is the case.
local g_weLeveled                 = 0
local g_crossover                 = 0

-- Various fudge variables required for fixing display on levelup when turning in quests that give both XP completion and POI completion!
local g_levelCarryOverValue       = 0
local g_levelChanged1             = false
local g_questCombiner1            = ""
local g_questCombiner2            = ""
local g_questCombiner2Alt         = ""
local g_questString1              = ""
local g_questString2              = ""
local g_totalLevelAdjust          = ""

-- Variables used for Trade Functions
local g_tradeInvitee              = ""
local g_tradeInviter              = ""
local g_tradeStacksIn             = {}
local g_tradeStacksOut            = {}
local g_tradeString1              = ""
local g_tradeString2              = ""

-- Colorize values (We don't define here, just when the call needs to be made)
local ChangeUpColorize
local ChangeDownColorize
local CurrencyGoldColorize
local APColorize
local TVColorize
local WVColorize
local DisguiseAlertColorize
local CollectibleColorize
local AchievementsColorize
local LorebookColorize

-- List of items to whitelist as notable loot
local g_notableIDs = {
    [56862]  = true,    -- Fortified Nirncrux
    [56863]  = true,    -- Potent Nirncrux
    [68342]  = true,    -- Hakeijo
}

-- List of items to blacklist as annyoing loot
local g_blacklistIDs = {
    [64713]  = true,    -- Laurel
    [64690]  = true,    -- Malachite Shard
    [69432]  = true,    -- Glass Style Motif Fragment
    -- Trial non worthless junk
    [114427] = true,    -- Undaunted Plunder
    [81180]  = true,    -- The Serpent's Egg-Tooth
    [74453]  = true,    -- The Rid-Thar's Moon Pearls
    [87701]  = true,    -- Star-Studded Champion's Baldric
    [87700]  = true,    -- Periapt of Elinhir
    -- Mercenary Motif Pages
    [64716]  = true,    -- Mercenary Motif
    [64717]  = true,    -- Mercenary Motif
    [64718]  = true,    -- Mercenary Motif
    [64719]  = true,    -- Mercenary Motif
    [64720]  = true,    -- Mercenary Motif
    [64721]  = true,    -- Mercenary Motif
    [64722]  = true,    -- Mercenary Motif
    [64723]  = true,    -- Mercenary Motif
    [64724]  = true,    -- Mercenary Motif
    [64725]  = true,    -- Mercenary Motif
    [64726]  = true,    -- Mercenary Motif
    [64727]  = true,    -- Mercenary Motif
    [64728]  = true,    -- Mercenary Motif
    [64729]  = true,    -- Mercenary Motif
}

local g_enchant_prefix_pos = {
    [1] = GetString(SI_ITEM_FORMAT_STR_CRAFTED),
    [2] = GetString(SI_MAIL_INBOX_RECEIVED_COLUMN),
    [3] = GetString(SI_ITEM_FORMAT_STR_CRAFTED),
}

local g_enchant_prefix_neg = {
    [1] = GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED),
    [2] = GetString(SI_LUIE_CA_PREFIX_MESSAGE_EXTRACTED),
    [3] = GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED),
}

local g_smithing_prefix_pos = {
    [1] = GetString(SI_MAIL_INBOX_RECEIVED_COLUMN),
    [2] = GetString(SI_ITEM_FORMAT_STR_CRAFTED),
    [3] = GetString(SI_MAIL_INBOX_RECEIVED_COLUMN),
    [4] = GetString(SI_LUIE_CA_PREFIX_MESSAGE_UPGRADED),
    [5] = "",
    [6] = GetString(SI_ITEM_FORMAT_STR_CRAFTED),
}

local g_smithing_prefix_neg = {
    [1] = GetString(SI_LUIE_CA_PREFIX_MESSAGE_REFINED),
    [2] = GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED),
    [3] = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DECONSTRUCTED),
    [4] = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DESTROYED),
    [5] = GetString(SI_LUIE_CA_PREFIX_MESSAGE_RESEARCHED),
    [6] = GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED),
}

function CA.Initialize(enabled)
    -- Load settings
    CA.SV = ZO_SavedVars:NewAccountWide( LUIE.SVName, LUIE.SVVer, "ChatAnnouncements", CA.D )

    -- Disable if setting not toggled on
    if not enabled then
        return
    end

    CA.Enabled = true

    -- Read current player toon name
    g_playerName = GetRawUnitName("player")
    g_playerNameFormatted = strformat(SI_UNIT_NAME, GetUnitName("player"))
    g_playerDisplayName = strformat(SI_UNIT_NAME, GetUnitDisplayName("player"))

    CA.CraftModeOverrides()

    -- Register events
    CA.RegisterGroupEvents()
    CA.RegisterGoldEvents()
    CA.RegisterAlliancePointEvents()
    CA.RegisterTelVarStoneEvents()
    CA.RegisterWritVoucherEvents()
    CA.RegisterLootEvents()
    CA.RegisterMailEvents()
    CA.RegisterXPEvents()
    CA.RegisterAchievementsEvent()
    CA.RegisterBagEvents()
    CA.RegisterHorseEvents()
    CA.RegisterGuildEvents()
    CA.RegisterSocialEvents()
    CA.RegisterCustomStrings()
    CA.RegisterDuelEvents()
    CA.RegisterDisguiseEvents()
    CA.RegisterMaraEvents()
    CA.RegisterCollectibleEvents()
    CA.RegisterColorEvents()
    CA.RegisterStuckEvents()
    CA.RegisterQuestEvents()

    -- Display enlightened message on game load or reload UI if toggled on
    if CA.SV.ExperienceEnlightened and IsEnlightenedAvailableForCharacter() and GetEnlightenedPool() > 0 then
        zo_callLater(CA.EnlightenedGained, 50)
    end
end

function CA.RegisterColorEvents()
    ChangeUpColorize = ZO_ColorDef:New(unpack(CA.SV.ChangeColorUp))
    ChangeDownColorize = ZO_ColorDef:New(unpack(CA.SV.ChangeColorDown))
    CollectibleColorize = ZO_ColorDef:New(unpack(CA.SV.CollectibleColor))
    CurrencyGoldColorize = ZO_ColorDef:New(unpack(CA.SV.CurrencyGoldColor))
    APColorize = ZO_ColorDef:New(unpack(CA.SV.CurrencyAPColor))
    TVColorize = ZO_ColorDef:New(unpack(CA.SV.CurrencyTVColor))
    WVColorize = ZO_ColorDef:New(unpack(CA.SV.CurrencyWVColor))
    DisguiseAlertColorize = ZO_ColorDef:New(unpack(CA.SV.DisguiseAlertColor))
    AchievementsColorize = ZO_ColorDef:New(unpack(CA.SV.AchievementsColor))
    LorebookColorize = ZO_ColorDef:New(unpack(CA.SV.LorebookColor))
end

function CA.RegisterCollectibleEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_COLLECTIBLE_NOTIFICATION_NEW)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_LORE_BOOK_LEARNED)
    if CA.SV.Collectible then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_COLLECTIBLE_NOTIFICATION_NEW, CA.NewCollectible)
    end
    if CA.SV.Lorebook then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_LORE_BOOK_LEARNED, CA.LoreBookLearned)
        LINK_HANDLER:RegisterCallback(LINK_HANDLER.LINK_MOUSE_UP_EVENT, LUIE.HandleClickEvent) 
        LINK_HANDLER:RegisterCallback(LINK_HANDLER.LINK_CLICKED_EVENT, LUIE.HandleClickEvent)
    end
end

function CA.RegisterSocialEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_FRIEND_ADDED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_FRIEND_REMOVED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INCOMING_FRIEND_INVITE_ADDED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INCOMING_FRIEND_INVITE_REMOVED)
    if CA.SV.MiscSocial then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_FRIEND_ADDED, CA.FriendAdded)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_FRIEND_REMOVED, CA.FriendRemoved)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INCOMING_FRIEND_INVITE_ADDED, CA.FriendInviteAdded)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INCOMING_FRIEND_INVITE_REMOVED, CA.FriendInviteRemoved)
    end
end

function CA.RegisterQuestEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_QUEST_SHARED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_QUEST_SHARE_REMOVED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_QUEST_ADDED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_QUEST_REMOVED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_QUEST_COMPLETE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_QUEST_CONDITION_COUNTER_CHANGED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_OBJECTIVE_COMPLETED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_POI_DISCOVERED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_DISCOVERY_EXPERIENCE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_QUEST_LOG_IS_FULL)

    if CA.SV.QuestShare then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_QUEST_SHARED, CA.QuestShared)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_QUEST_SHARE_REMOVED, CA.QuestShareRemoved)
    end
    if CA.SV.Quest or CA.SV.QuestShare then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_QUEST_ADDED, CA.QuestAdded)
    end
    if CA.SV.Quest or CA.SV.QuestCSA then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_QUEST_REMOVED, CA.QuestRemoved)
    end
    if CA.SV.Quest or CA.SV.Loot then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_QUEST_COMPLETE, CA.QuestComplete)
    end
    if CA.SV.QuestFailure then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_QUEST_CONDITION_COUNTER_CHANGED, CA.QuestFailed)
    end
    if CA.SV.QuestPOICompleted then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_OBJECTIVE_COMPLETED, CA.QuestObjectiveComplete)
    end
    if CA.SV.QuestPOIDiscovery then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_DISCOVERY_EXPERIENCE, CA.DiscoveryExperience)
    end
    if CA.SV.QuestObjectiveDiscovery then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_POI_DISCOVERED, CA.POIDiscovered)
    end
    if CA.SV.QuestLogFull then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_QUEST_LOG_IS_FULL, CA.QuestLogFull)
    end
    
    -- Create a table for quests
    for i = 1, 25 do
        if IsValidQuestIndex(i) then
            local name = GetJournalQuestName(i)
            local questType = GetJournalQuestType(i)
            local instanceDisplayType = GetJournalQuestInstanceDisplayType(i)

            if name == "" then
                name = GetString(SI_QUEST_JOURNAL_UNKNOWN_QUEST_NAME)
            end

            g_questIndex[name] =
                {
                    questType = questType,
                    instanceDisplayType = instanceDisplayType
                }
        end
    end
    
end

function CA.RegisterGuildEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GUILD_MEMBER_ADDED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GUILD_MEMBER_REMOVED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GUILD_MEMBER_RANK_CHANGED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GUILD_SELF_JOINED_GUILD)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GUILD_INVITE_ADDED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GUILD_INVITE_REMOVED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GUILD_MOTD_CHANGED)
    if CA.SV.MiscGuild then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GUILD_MEMBER_ADDED, CA.GuildMemberAdded)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GUILD_MEMBER_REMOVED, CA.GuildMemberRemoved)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GUILD_SELF_JOINED_GUILD, CA.GuildAddedSelf)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GUILD_INVITE_ADDED, CA.GuildInviteAdded)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GUILD_INVITE_REMOVED, CA.GuildInviteRemoved)
        if CA.SV.MiscGuildMOTD then
            EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GUILD_MOTD_CHANGED, CA.GuildMOTD)
        end
        if CA.SV.MiscGuildRank then
            EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GUILD_MEMBER_RANK_CHANGED, CA.GuildRank)
        end

        -- Index Guild Ranks
        g_guildRankData = {}
        if CA.SV.MiscGuildRank then
            for i = 1,5 do
                local guildId = GetGuildId(i)
                local memberIndex = GetPlayerGuildMemberIndex(guildId)
                local _, _, rankIndex = GetGuildMemberInfo(guildId, memberIndex)
                g_guildRankData[guildId] = {rank=rankIndex}
            end
        end
    end
end

function CA.RegisterMaraEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_PLEDGE_OF_MARA_OFFER)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_PLEDGE_OF_MARA_RESULT)
    if CA.SV.MiscMara then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_PLEDGE_OF_MARA_OFFER, CA.MaraOffer)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_PLEDGE_OF_MARA_RESULT, CA.MaraResult)
    end
end

function CA.RegisterDuelEvents()
    -- EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_DUEL_COUNTDOWN, CA.DuelCountdown)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_DUEL_INVITE_RECEIVED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_DUEL_INVITE_ACCEPTED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_DUEL_INVITE_SENT)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_DUEL_FINISHED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_DUEL_INVITE_FAILED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_DUEL_INVITE_DECLINED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_DUEL_INVITE_CANCELED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_DUEL_NEAR_BOUNDARY)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_DUEL_STARTED)
    if CA.SV.MiscDuel then
        --EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_DUEL_COUNTDOWN, CA.DuelCountdown)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_DUEL_INVITE_RECEIVED, CA.DuelInviteReceived)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_DUEL_INVITE_ACCEPTED, CA.DuelInviteAccepted)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_DUEL_INVITE_SENT, CA.DuelInviteSent)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_DUEL_FINISHED, CA.DuelFinished)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_DUEL_INVITE_FAILED, CA.DuelInviteFailed)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_DUEL_INVITE_DECLINED, CA.DuelInviteDeclined)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_DUEL_INVITE_CANCELED, CA.DuelInviteCanceled)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_DUEL_NEAR_BOUNDARY, CA.DuelNearBoundary)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_DUEL_STARTED, CA.DuelStarted)
    end
end

function CA.RegisterDisguiseEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName .. "player", EVENT_DISGUISE_STATE_CHANGED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_PLAYER_ACTIVATED)
    if CA.SV.MiscDisguise then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_PLAYER_ACTIVATED, CA.OnPlayerActivated)
        EVENT_MANAGER:RegisterForEvent(moduleName .. "player", EVENT_DISGUISE_STATE_CHANGED, CA.DisguiseState )
        EVENT_MANAGER:AddFilterForEvent(moduleName .. "player", EVENT_DISGUISE_STATE_CHANGED, REGISTER_FILTER_UNIT_TAG, "player" )
        g_currentDisguise = GetItemId(0, 10) or 0 -- Get the currently equipped disguise itemId if any
        g_disguiseState = GetUnitDisguiseState("player") -- Get current player disguise state
        if g_disguiseState > 0 then
            g_disguiseState = 1 -- Simplify all the various states into a basic 0 = false, 1 = true value
            zo_callLater(CA.DisplayDisguiseOnLoad, 50)
        end
    end
end

function CA.DisplayDisguiseOnLoad()
    if CA.SV.MiscDisguiseOption == 1 or CA.SV.MiscDisguiseOption == 3 then
        printToChat(strformat("<<1>> <<2>>", GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_DISGUISED), E.DisguiseIcons[g_currentDisguise].description))
    end
    if CA.SV.MiscDisguiseOption == 2 or CA.SV.MiscDisguiseOption == 3 then
        local messageParams = CENTER_SCREEN_ANNOUNCE:CreateMessageParams(CSA_CATEGORY_SMALL_TEXT)
        messageParams:SetText(strformat("<<1>> <<2>>", GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_DISGUISED), E.DisguiseIcons[g_currentDisguise].description))
        messageParams:SetCSAType(CENTER_SCREEN_ANNOUNCE_TYPE_COUNTDOWN)
        CENTER_SCREEN_ANNOUNCE:AddMessageWithParams(messageParams)
    end
end

function CA.RegisterAchievementsEvent()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_ACHIEVEMENT_UPDATED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_ACHIEVEMENT_AWARDED)
    if CA.SV.AchievementsProgress then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_ACHIEVEMENT_UPDATED, CA.OnAchievementUpdated)
    end
    if CA.SV.AchievementsComplete then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_ACHIEVEMENT_AWARDED, CA.OnAchievementAwarded)
    end
end

function CA.RegisterXPEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_EXPERIENCE_GAIN)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_LEVEL_UPDATE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_CHAMPION_POINT_UPDATE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_ENLIGHTENED_STATE_GAINED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_ENLIGHTENED_STATE_LOST)
    if CA.SV.Experience or CA.SV.ExperienceLevelUp then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_EXPERIENCE_GAIN, CA.OnExperienceGain)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_LEVEL_UPDATE, CA.OnLevelUpdate)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_CHAMPION_POINT_UPDATE, CA.OnChampionUpdate)
        CA.LevelUpdateHelper()
    end
    if CA.SV.ExperienceEnlightened then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_ENLIGHTENED_STATE_GAINED, CA.EnlightenedGained)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_ENLIGHTENED_STATE_LOST, CA.EnlightenedLost)
    end
end

function CA.RegisterStuckEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_STUCK_BEGIN)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_STUCK_ERROR_ALREADY_IN_PROGRESS)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_STUCK_ERROR_INVALID_LOCATION)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_STUCK_ERROR_IN_COMBAT)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_STUCK_ERROR_ON_COOLDOWN)
    if CA.SV.MiscStuck then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_STUCK_BEGIN, CA.StuckBegin)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_STUCK_ERROR_ALREADY_IN_PROGRESS, CA.StuckAlreadyInProgress)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_STUCK_ERROR_INVALID_LOCATION, CA.StuckInvalidLocation)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_STUCK_ERROR_IN_COMBAT, CA.StuckInCombat)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_STUCK_ERROR_ON_COOLDOWN, CA.StuckOnCooldown)
    end
end

function CA.Broadcast(eventCode, message)
    --d("Broadcast deteceted!")
    printToChat(message)
end

function CA.RegisterGroupEvents()
    EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_BROADCAST, CA.Broadcast)
    -- Group Events
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUP_INVITE_REMOVED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUP_UPDATE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUP_MEMBER_JOINED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUP_MEMBER_LEFT)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUP_INVITE_RECEIVED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUP_INVITE_RESPONSE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_LEADER_UPDATE)
    -- Ready check and Group Finder Votekick Events
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUP_ELECTION_FAILED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUP_ELECTION_NOTIFICATION_ADDED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUP_ELECTION_RESULT)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUP_ELECTION_REQUESTED)
    -- Group Finder Events
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUPING_TOOLS_LFG_JOINED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUPING_TOOLS_NO_LONGER_LFG)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUPING_TOOLS_FIND_REPLACEMENT_NOTIFICATION_NEW)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_ACTIVITY_FINDER_ACTIVITY_COMPLETE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_ACTIVITY_FINDER_STATUS_UPDATE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_ACTIVITY_QUEUE_RESULT)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUPING_TOOLS_READY_CHECK_CANCELLED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUPING_TOOLS_READY_CHECK_UPDATED)
    -- Raid Events
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_RAID_TRIAL_COMPLETE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_RAID_TRIAL_FAILED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_RAID_TRIAL_STARTED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_RAID_TRIAL_NEW_BEST_SCORE)
    if CA.SV.GroupChatMsg then
        local groupSize = GetGroupSize()
        if groupSize > 1 then
            g_areWeGrouped = true
        end
        if IsInLFGGroup() then
            g_LFGJoinAntiSpam = true
        end
        -- Group Events
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_INVITE_REMOVED, CA.GroupInviteRemoved)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_UPDATE, CA.GroupUpdate)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_MEMBER_JOINED, CA.OnGroupMemberJoined)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_MEMBER_LEFT,   CA.OnGroupMemberLeft)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_INVITE_RECEIVED, CA.OnGroupInviteReceived)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_INVITE_RESPONSE, CA.OnGroupInviteResponse)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_LEADER_UPDATE, CA.OnGroupLeaderUpdate)
        --EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_MEMBER_ROLES_CHANGED, CA.GMRC) -- Possibly re-enable later if solution is found.
        --EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_MEMBER_CONNECTED_STATUS, CA.GMCS) -- Possibly re-enable later if solution is found.
        -- Ready check and Group Finder Votekick Events
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_ELECTION_FAILED, CA.VoteFailed)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_ELECTION_NOTIFICATION_ADDED, CA.VoteNotify)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_ELECTION_RESULT, CA.VoteResult)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_ELECTION_REQUESTED, CA.VoteRequested)
        -- Group Finder Events
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUPING_TOOLS_LFG_JOINED, CA.LFGJoined)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUPING_TOOLS_NO_LONGER_LFG, CA.LFGLeft)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUPING_TOOLS_FIND_REPLACEMENT_NOTIFICATION_NEW, CA.GroupFindReplacementNew)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_ACTIVITY_FINDER_STATUS_UPDATE, CA.ActivityStatusUpdate)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_ACTIVITY_QUEUE_RESULT, CA.ActivityQueueResult)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUPING_TOOLS_READY_CHECK_CANCELLED, CA.ReadyCheckCancel)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUPING_TOOLS_READY_CHECK_UPDATED, CA.ReadyCheckUpdate)
    end
    if CA.SV.GroupLFGComplete then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_ACTIVITY_FINDER_ACTIVITY_COMPLETE, CA.ActivityComplete)
    end
    if CA.SV.GroupRaid then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_RAID_TRIAL_COMPLETE, CA.TrialComplete)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_RAID_TRIAL_FAILED, CA.TrialFailed)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_RAID_TRIAL_STARTED, CA.TrialStarted)
    end
    if CA.SV.GroupRaidScore then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_RAID_TRIAL_NEW_BEST_SCORE, CA.TrialScore)
    end
end

function CA.RegisterGoldEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_MONEY_UPDATE)
     -- Only register this event if the menu setting is true
    if CA.SV.CurrencyGoldChange or CA.SV.MiscMail then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MONEY_UPDATE, CA.OnMoneyUpdate)
    end
    if CA.SV.MiscMail or CA.SV.LootMail or CA.SV.CurrencyGoldChange then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_ATTACHMENT_ADDED, CA.OnMailAttach)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_ATTACHMENT_REMOVED, CA.OnMailAttachRemove)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_CLOSE_MAILBOX, CA.OnMailCloseBox)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_SEND_FAILED, CA.OnMailFail)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_SEND_SUCCESS, CA.OnMailSuccess)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_ATTACHED_MONEY_CHANGED, CA.MailMoneyChanged)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_COD_CHANGED, CA.MailCODChanged)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_REMOVED, CA.MailRemoved)
    end
end

function CA.RegisterMailEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_MAIL_READABLE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_MAIL_TAKE_ATTACHED_ITEM_SUCCESS)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_MAIL_ATTACHMENT_ADDED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_MAIL_ATTACHMENT_REMOVED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_MAIL_OPEN_MAILBOX)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_MAIL_CLOSE_MAILBOX)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_MAIL_SEND_FAILED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_MAIL_SEND_SUCCESS)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_MAIL_ATTACHED_MONEY_CHANGED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_MAIL_COD_CHANGED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_MAIL_REMOVED)
    if CA.SV.MiscMail or CA.SV.LootMail then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_READABLE, CA.OnMailReadable)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_TAKE_ATTACHED_ITEM_SUCCESS, CA.OnMailTakeAttachedItem)
    end
    if CA.SV.MiscMail or CA.SV.LootMail or CA.SV.CurrencyGoldChange then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_ATTACHMENT_ADDED, CA.OnMailAttach)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_ATTACHMENT_REMOVED, CA.OnMailAttachRemove)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_SEND_FAILED, CA.OnMailFail)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_SEND_SUCCESS, CA.OnMailSuccess)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_ATTACHED_MONEY_CHANGED, CA.MailMoneyChanged)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_COD_CHANGED, CA.MailCODChanged)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_REMOVED, CA.MailRemoved)
    end
    if CA.SV.Loot or CA.SV.MiscMail or CA.SV.LootMail or CA.SV.CurrencyGoldChange then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_OPEN_MAILBOX, CA.OnMailOpenBox)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MAIL_CLOSE_MAILBOX, CA.OnMailCloseBox)
    end
    if CA.SV.MiscMail or CA.SV.CurrencyGoldChange then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_MONEY_UPDATE, CA.OnMoneyUpdate)
    end
end

function CA.RegisterLootEvents()
    -- LOOT RECEIVED
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_LOOT_RECEIVED)
    -- QUEST REWARD CONTEXT
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_QUEST_COMPLETE)
    -- INDEX
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE)
    -- VENDOR
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_BUYBACK_RECEIPT)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_BUY_RECEIPT)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_SELL_RECEIPT)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_OPEN_FENCE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_CLOSE_STORE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_OPEN_STORE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_ITEM_LAUNDER_RESULT)
    -- BANK
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_OPEN_BANK)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_CLOSE_BANK)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_OPEN_GUILD_BANK)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_CLOSE_GUILD_BANK)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GUILD_BANK_ITEM_ADDED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GUILD_BANK_ITEM_REMOVED)
    -- TRADE
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_ITEM_ADDED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_ITEM_REMOVED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_SUCCEEDED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_INVITE_WAITING)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_INVITE_CONSIDERING)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_INVITE_ACCEPTED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_INVITE_FAILED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_ELEVATION_FAILED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_ITEM_ADD_FAILED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_CANCELED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_FAILED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_INVITE_CANCELED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TRADE_INVITE_DECLINED)
    -- CRAFT
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_CRAFTING_STATION_INTERACT, CA.CraftingOpen)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_END_CRAFTING_STATION_INTERACT, CA.CraftingClose)
    -- JUSTICE/DESTROY
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_JUSTICE_STOLEN_ITEMS_REMOVED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_ITEM_DESTROYED)
    -- LOCKPICK
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_LOCKPICK_BROKE)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INTERACTABLE_IMPOSSIBLE_TO_PICK)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INTERACTABLE_LOCKED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_LOCKPICK_FAILED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_LOCKPICK_SUCCESS)
    -- LOOT FAILED
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_QUEST_COMPLETE_ATTEMPT_FAILED_INVENTORY_FULL)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_IS_FULL)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_LOOT_ITEM_FAILED)

    -- LOOT RECEIVED
    if CA.SV.Loot then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_LOOT_RECEIVED, CA.OnLootReceived)
    end
    -- QUEST REWARD CONTEXT
    if CA.SV.Loot or CA.SV.Quest then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_QUEST_COMPLETE, CA.QuestComplete)
    end
    -- INDEX
    if CA.SV.Loot or CA.SV.ShowDestroy or CA.SV.ShowConfiscate or CA.SV.ShowDisguise or CA.SV.ShowLockpickBreak then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE, CA.InventoryUpdate)
        g_equippedStacks = {}
        g_inventoryStacks = {}
        CA.IndexEquipped()
        CA.IndexInventory()
    end
    -- VENDOR
    if CA.SV.LootVendor then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_BUYBACK_RECEIPT, CA.OnBuybackItem)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_BUY_RECEIPT, CA.OnBuyItem)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_SELL_RECEIPT, CA.OnSellItem)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_ITEM_LAUNDER_RESULT, CA.FenceSuccess)
    end
    if CA.SV.Loot or CA.SV.LootVendor then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_OPEN_FENCE, CA.FenceOpen)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_OPEN_STORE, CA.StoreOpen)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_CLOSE_STORE, CA.StoreClose)
    end
    -- BANK
    if CA.SV.LootBank then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GUILD_BANK_ITEM_ADDED, CA.GuildBankItemAdded)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GUILD_BANK_ITEM_REMOVED, CA.GuildBankItemRemoved)
    end
    if CA.SV.Loot or CA.SV.LootBank then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_OPEN_BANK, CA.BankOpen)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_CLOSE_BANK, CA.BankClose)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_OPEN_GUILD_BANK, CA.GuildBankOpen)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_CLOSE_GUILD_BANK, CA.GuildBankClose)
    end
    -- TRADE
    if CA.SV.MiscTrade or CA.SV.LootTrade or CA.SV.Loot then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_SUCCEEDED, CA.OnTradeSuccess)
    end
    if CA.SV.MiscTrade and not CA.SV.LootTrade then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_INVITE_WAITING, CA.TradeInviteWaiting)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_INVITE_CONSIDERING, CA.TradeInviteConsidering)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_INVITE_ACCEPTED, CA.TradeInviteAccepted)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_INVITE_FAILED, CA.TradeInviteFailed)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_ELEVATION_FAILED, CA.TradeElevationFailed)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_ITEM_ADD_FAILED, CA.TradeItemAddFailed)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_CANCELED, CA.TradeCancel)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_FAILED, CA.TradeFail)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_INVITE_CANCELED, CA.TradeInviteCancel)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_INVITE_DECLINED, CA.TradeInviteDecline)
    elseif CA.SV.LootTrade then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_ITEM_ADDED, CA.OnTradeAdded)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_ITEM_REMOVED, CA.OnTradeRemoved)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_INVITE_WAITING, CA.TradeInviteWaiting)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_INVITE_CONSIDERING, CA.TradeInviteConsidering)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_INVITE_ACCEPTED, CA.TradeInviteAccepted)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_INVITE_FAILED, CA.TradeInviteFailed)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_ELEVATION_FAILED, CA.TradeElevationFailed)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_ITEM_ADD_FAILED, CA.TradeItemAddFailed)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_CANCELED, CA.TradeCancel)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_FAILED, CA.TradeFail)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_INVITE_CANCELED, CA.TradeInviteCancel)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TRADE_INVITE_DECLINED, CA.TradeInviteDecline)
    end
    -- CRAFT
    if CA.SV.Loot or CA.SV.LootCraft then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_CRAFTING_STATION_INTERACT, CA.CraftingOpen)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_END_CRAFTING_STATION_INTERACT, CA.CraftingClose)
    end
    -- JUSTICE/DESTROY
    if CA.SV.ShowDestroy then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_ITEM_DESTROYED, CA.DestroyItem)
    end
    if CA.SV.Loot or CA.SV.ShowDestroy or CA.SV.ShowConfiscate or CA.SV.MiscConfiscate or CA.SV.ShowDisguise then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_JUSTICE_STOLEN_ITEMS_REMOVED, CA.JusticeStealRemove)
    end
    -- LOCKPICK
    if CA.SV.ShowLockpickBreak then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_LOCKPICK_BROKE, CA.MiscAlertLockBroke)
    end
    if CA.SV.MiscLockpick then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INTERACTABLE_IMPOSSIBLE_TO_PICK, CA.MiscAlertLockImpossible)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INTERACTABLE_LOCKED, CA.MiscAlertLockLocked)
    end
    if CA.SV.MiscLockpick or CA.SV.ShowLockpickBreak then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_LOCKPICK_FAILED, CA.MiscAlertLockFailed)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_LOCKPICK_SUCCESS, CA.MiscAlertLockSuccess)
    end
    if CA.SV.ShowLootFail then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_QUEST_COMPLETE_ATTEMPT_FAILED_INVENTORY_FULL, CA.InventoryFullQuest)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_IS_FULL, CA.InventoryFull)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_LOOT_ITEM_FAILED, CA.LootItemFailed)
    end
end

function CA.RegisterBagEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_BAG_CAPACITY_CHANGED)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_BANK_CAPACITY_CHANGED)
    if CA.SV.MiscBags then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_BAG_CAPACITY_CHANGED, CA.MiscAlertBags)
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_BANK_CAPACITY_CHANGED, CA.MiscAlertBank)
    end
end

function CA.RegisterHorseEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_RIDING_SKILL_IMPROVEMENT)
    if CA.SV.MiscHorse then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_RIDING_SKILL_IMPROVEMENT, CA.MiscAlertHorse)
    end
end

function CA.RegisterAlliancePointEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_ALLIANCE_POINT_UPDATE)
    if CA.SV.CurrencyAPShowChange then -- Only register this event if the menu setting is true
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_ALLIANCE_POINT_UPDATE, CA.OnAlliancePointUpdate)
    end
end

function CA.RegisterTelVarStoneEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_TELVAR_STONE_UPDATE)
    if CA.SV.CurrencyTVChange then -- Only register this event if the menu setting is true
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_TELVAR_STONE_UPDATE, CA.OnTelVarStoneUpdate)
    end
end

function CA.RegisterWritVoucherEvents()
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_WRIT_VOUCHER_UPDATE)
    if CA.SV.CurrencyWVChange then -- Only register this event if the menu setting is true
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_WRIT_VOUCHER_UPDATE, CA.OnWritVoucherUpdate)
    end
end

-- Helper function called after receiving a group invite. This ensures we don't ever have any issues seeing the first group invite message by renabling the Event handler after the first message arrives.
-- Otherwise we would see both messages broadcast as 2 events fire at the player when a group invite is received.
function CA.RefreshGroupInviteEnable()
    EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_GROUP_INVITE_RECEIVED, CA.OnGroupInviteReceived)
end

function CA.GuildMemberAdded(eventCode, guildId, DisplayName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(DisplayName)
    local guildName = GetGuildName(guildId)

    local guilds = GetNumGuilds()
    for i = 1,guilds do
        local id = GetGuildId(i)
        local name = GetGuildName(id)

        local guildAlliance = GetGuildAlliance(id)
        local guildNameAlliance = CA.SV.MiscGuildIcon and zo_iconTextFormat(GetAllianceBannerIcon(guildAlliance), 16, 16, ZO_SELECTED_TEXT:Colorize(guildName)) or (ZO_SELECTED_TEXT:Colorize(guildName))

        if guildName == name then
            printToChat(strformat(GetString(SI_GUILD_ROSTER_ADDED), displayNameLink, guildNameAlliance))
            break
        end
    end
end

function CA.GuildMemberRemoved(eventCode, guildId, DisplayName, CharacterName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(DisplayName)
    local guildName = GetGuildName(guildId)

    local guilds = GetNumGuilds()
    for i = 1,guilds do
        local id = GetGuildId(i)
        local name = GetGuildName(id)

        local guildAlliance = GetGuildAlliance(id)
        local guildNameAlliance = CA.SV.MiscGuildIcon and zo_iconTextFormat(GetAllianceBannerIcon(guildAlliance), 16, 16, ZO_SELECTED_TEXT:Colorize(guildName)) or (ZO_SELECTED_TEXT:Colorize(guildName))

        if guildName == name then
            printToChat(strformat(GetString(SI_GUILD_ROSTER_REMOVED), displayNameLink, guildNameAlliance))
            break
        end
    end
end

function CA.GuildMOTD(eventCode, guildId)
    local motd = GetGuildMotD(guildId)
    local guildName = GetGuildName(guildId)

    local guilds = GetNumGuilds()
    for i = 1,guilds do
        local id = GetGuildId(i)
        local name = GetGuildName(id)

        local guildAlliance = GetGuildAlliance(id)
        local guildNameAlliance = CA.SV.MiscGuildIcon and zo_iconTextFormat(GetAllianceBannerIcon(guildAlliance), 16, 16, ZO_SELECTED_TEXT:Colorize(guildName)) or (ZO_SELECTED_TEXT:Colorize(guildName))

        if guildName == name then
            printToChat(strformat(GetString(SI_LUIE_CA_GUILD_MOTD_CHANGED), guildNameAlliance, motd))
            break
        end
    end
end

function CA.GuildRank(eventCode, guildId, DisplayName, newRank)
    local currentRank = g_guildRankData[guildId].rank
    local hasPermission1 = DoesGuildRankHavePermission(guildId, currentRank, 4)
    local hasPermission2 = DoesGuildRankHavePermission(guildId, currentRank, 5)

    if ((hasPermission1 or hasPermission2) and DisplayName ~= g_playerDisplayName and CA.SV.GuildRankDisplayOptions == 2) or (CA.SV.GuildRankDisplayOptions == 3 and DisplayName ~= g_playerDisplayName) then
        local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(DisplayName)
        local rankName
        local rankNameDefault = GetDefaultGuildRankName(guildId, newRank)
        local rankNameCustom = GetGuildRankCustomName(guildId, newRank)

        if rankNameCustom == "" then
            rankName = rankNameDefault
        else
            rankName = rankNameCustom
        end

        local icon = GetGuildRankIconIndex(guildId, newRank)
        local icon = GetGuildRankLargeIcon(icon)
        local iconSize = 16
        local rankSyntax = CA.SV.MiscGuildIcon and zo_iconTextFormat(icon, iconSize, iconSize, ZO_SELECTED_TEXT:Colorize(rankName)) or (ZO_SELECTED_TEXT:Colorize(rankName))
        local guildName = GetGuildName(guildId)
        local guilds = GetNumGuilds()

        for i = 1,guilds do
            local id = GetGuildId(i)
            local name = GetGuildName(id)

            local guildAlliance = GetGuildAlliance(id)
            local guildNameAlliance = CA.SV.MiscGuildIcon and zo_iconTextFormat(GetAllianceBannerIcon(guildAlliance), 16, 16, ZO_SELECTED_TEXT:Colorize(guildName)) or (ZO_SELECTED_TEXT:Colorize(guildName))

            if guildName == name then
                printToChat(strformat(GetString(SI_LUIE_CA_GUILD_RANK_CHANGED), displayNameLink, guildNameAlliance, rankSyntax))
                break
            end
        end
    end

    -- Cancel out if its not the player being promoted. It would be a little inefficient to index all guild members on initialize for this.
    if DisplayName == g_playerDisplayName then
        local rankName
        local rankNameDefault = GetDefaultGuildRankName(guildId, newRank)
        local rankNameCustom = GetGuildRankCustomName(guildId, newRank)
        if rankNameCustom == "" then
            rankName = rankNameDefault
        else
            rankName = rankNameCustom
        end

        local icon = GetGuildRankIconIndex(guildId, newRank)
        local icon = GetGuildRankLargeIcon(icon)
        local iconSize = 16
        local rankSyntax = CA.SV.MiscGuildIcon and zo_iconTextFormat(icon, iconSize, iconSize, ZO_SELECTED_TEXT:Colorize(rankName)) or (ZO_SELECTED_TEXT:Colorize(rankName))

        local guildName = GetGuildName(guildId)

        if currentRank > newRank then
            changestring = GetString(SI_LUIE_CA_GUILD_RANK_UP)
        end
        if currentRank < newRank then
            changestring = GetString(SI_LUIE_CA_GUILD_RANK_DOWN)
        end

        g_guildRankData[guildId].rank = newRank

        local guilds = GetNumGuilds()
        for i = 1,guilds do
            local id = GetGuildId(i)
            local name = GetGuildName(id)

            local guildAlliance = GetGuildAlliance(id)
            local guildNameAlliance = CA.SV.MiscGuildIcon and zo_iconTextFormat(GetAllianceBannerIcon(guildAlliance), 16, 16, ZO_SELECTED_TEXT:Colorize(guildName)) or (ZO_SELECTED_TEXT:Colorize(guildName))

            if guildName == name then
                printToChat(strformat(GetString(SI_LUIE_CA_GUILD_RANK_CHANGED_SELF), changestring, rankSyntax, guildNameAlliance))
                break
            end
        end
    end
end

function CA.GuildAddedSelf(eventCode, guildId, guildName)
    local guilds = GetNumGuilds()
    for i = 1,guilds do
        local id = GetGuildId(i)
        local name = GetGuildName(id)

        local guildAlliance = GetGuildAlliance(id)
        local guildNameAlliance = CA.SV.MiscGuildIcon and zo_iconTextFormat(GetAllianceBannerIcon(guildAlliance), 16, 16, ZO_SELECTED_TEXT:Colorize(guildName)) or (ZO_SELECTED_TEXT:Colorize(guildName))

        if guildName == name then
            printToChat(strformat(GetString(SI_LUIE_CA_GUILD_JOIN_SELF), guildNameAlliance))
            break
        end
    end

    g_guildJoinFudger = true

    -- Reindex Guild Ranks
    g_guildRankData = {}
    if CA.SV.MiscGuildRank then
        for i = 1,5 do
            local guildId = GetGuildId(i)
            local memberIndex = GetPlayerGuildMemberIndex(guildId)
            local _, _, rankIndex = GetGuildMemberInfo(guildId, memberIndex)
            g_guildRankData[guildId] = {rank=rankIndex}
        end
    end
end

-- We don't register this event here because its important that it is called before reindexing is applied in LUIE base.
function CA.GuildRemovedSelf(eventCode, guildId, guildName)
    local GuildIndexData = LUIE.GuildIndexData
    for i = 1,5 do
        local guild = GuildIndexData[i]
        if guild.name == guildName then
            local guildNameAlliance = CA.SV.MiscGuildIcon and zo_iconTextFormat(GetAllianceBannerIcon(guild.guildAlliance), 16, 16, ZO_SELECTED_TEXT:Colorize(guildName)) or (ZO_SELECTED_TEXT:Colorize(guildName))
            printToChat(strformat(GetString(SI_LUIE_CA_GUILD_LEAVE_SELF), guildNameAlliance))
            break
        end
    end

    -- Reindex Guild Ranks
    g_guildRankData = {}
    if CA.SV.MiscGuildRank then
        for i = 1,5 do
            local guildId = GetGuildId(i)
            local memberIndex = GetPlayerGuildMemberIndex(guildId)
            local _, _, rankIndex = GetGuildMemberInfo(guildId, memberIndex)
            g_guildRankData[guildId] = {rank=rankIndex}
        end
    end
end

function CA.GuildInviteAdded(eventCode, guildId, guildName, guildAlliance, inviterName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(inviterName)
    local guildNameAlliance = CA.SV.MiscGuildIcon and zo_iconTextFormat(GetAllianceBannerIcon(guildAlliance), 16, 16, ZO_SELECTED_TEXT:Colorize(guildName)) or (ZO_SELECTED_TEXT:Colorize(guildName))
    printToChat(strformat(GetString(SI_LUIE_CA_GUILD_INCOMING_GUILD_REQUEST), displayNameLink, guildNameAlliance))
end

function CA.GuildInviteRemoved(eventCode, guildId)
    zo_callLater(CA.GuildInviteFudger, 100)
end

function CA.GuildInviteFudger()
    if not g_guildJoinFudger then
        printToChat(GetString(SI_LUIE_CA_GUILD_INVITE_DECLINED))
    end
    g_guildJoinFudger = false
end

function CA.FriendInviteFudger()
    if not FriendInviteFudger then
        printToChat(GetString(SI_LUIE_CA_FRIENDS_FRIEND_INVITE_DECLINED))
    end
    FriendInviteFudger = false
end

function CA.FriendAdded(eventCode, DisplayName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(DisplayName)
    printToChat(strformat(GetString(SI_LUIE_CA_FRIENDS_FRIEND_ADDED), displayNameLink))
    FriendInviteFudger = true
end

function CA.FriendRemoved(eventCode, DisplayName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(DisplayName)
    printToChat(strformat(GetString(SI_LUIE_CA_FRIENDS_FRIEND_REMOVED), displayNameLink))
end

function CA.FriendInviteAdded(eventCode, inviterName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(inviterName)
    printToChat(strformat(GetString(SI_LUIE_CA_FRIENDS_INCOMING_FRIEND_REQUEST), displayNameLink))
end

function CA.FriendInviteRemoved(eventCode, inviterName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(inviterName)
    zo_callLater(CA.FriendInviteFudger, 100)
end

function CA.QuestShared (eventCode, questId)
    local questName, characterName, timeSinceRequestMs, displayName = GetOfferedQuestShareInfo(questId)
    local characterNameLink = ZO_LinkHandler_CreateCharacterLink(characterName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(displayName)
    local displayBothString = ( strformat("<<1>><<2>>", characterName, displayName) )
    local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, displayName)

    if CA.SV.ChatPlayerDisplayOptions == 1 then
        printToChat(strformat(GetString(SI_LUIE_CA_GROUP_INCOMING_QUEST_SHARE), displayNameLink, questName))
    end
    if CA.SV.ChatPlayerDisplayOptions == 2 then
        printToChat(strformat(GetString(SI_LUIE_CA_GROUP_INCOMING_QUEST_SHARE), characterNameLink, questName))
    end
    if CA.SV.ChatPlayerDisplayOptions == 3 then
        printToChat(strformat(GetString(SI_LUIE_CA_GROUP_INCOMING_QUEST_SHARE), displayBoth, questName))
    end
end

function CA.QuestShareRemoved(eventCode, questId)
    zo_callLater(CA.QuestShareMessageHelper, 50)
end

g_questComboString = ""

function CA.QuestAdded(eventCode, journalIndex, questName, objectiveName)

    if CA.SV.QuestShare then
        g_QuestShareFudger = true
        zo_callLater(CA.QuestShareMessageReset, 100)
    end
    
    local questType = GetJournalQuestType(journalIndex)
    local instanceDisplayType = GetJournalInstanceDisplayType(journalIndex)
    local questJournalObject = SYSTEMS:GetObject("questJournal")
    local iconTexture = questJournalObject:GetIconTexture(questType, instanceDisplayType)
    
    -- Add quest to index
    g_questIndex[questName] =
                {
                    questType = questType,
                    instanceDisplayType = instanceDisplayType
                }

    if CA.SV.Quest then
        local questNameFormatted
        local stepText = GetJournalQuestStepInfo(journalIndex, 1)
        local formattedString

        if CA.SV.QuestLong then
            questNameFormatted = (strformat("|cFFA500<<1>>:|r <<2>>", questName, stepText))
        else
            questNameFormatted = (strformat("|cFFA500<<1>>|r", questName))
        end

        if iconTexture and CA.SV.QuestIcon then
            formattedString = strformat(SI_NOTIFYTEXT_QUEST_ACCEPT_WITH_ICON, zo_iconFormat(iconTexture, 16, 16), questNameFormatted)
        else
            formattedString = strformat(SI_NOTIFYTEXT_QUEST_ACCEPT, questNameFormatted)
        end

        g_questComboString = formattedString
        zo_callLater (CA.PrintQuestAccepted, 50)
    end
end

function CA.PrintQuestAccepted()
    if g_questComboString ~= "" then
        printToChat(g_questComboString)
        g_questComboString = ""
    end
end

function CA.QuestRemoved(eventCode, isCompleted, journalIndex, questName, zoneIndex, poiIndex, questID)
    if not isCompleted then
    
        if CA.SV.Quest or CA.SV.QuestCSA then
        
            local iconTexture
            
            if g_questIndex[questName] then
                local questJournalObject = SYSTEMS:GetObject("questJournal")
                local questType = g_questIndex[questName].questType
                local instanceDisplayType = g_questIndex[questName].instanceDisplayType
                iconTexture = questJournalObject:GetIconTexture(questType, instanceDisplayType)
            end
        
            if CA.SV.Quest then
                local questNameFormatted = (strformat("|cFFA500<<1>>|r", questName))
                local formattedString
                if iconTexture and CA.SV.QuestIcon then
                    formattedString = strformat(SI_LUIE_CA_QUEST_ABANDONED_WITH_ICON, zo_iconFormat(iconTexture, 16, 16), questNameFormatted)
                else
                    formattedString = strformat(SI_LUIE_CA_QUEST_ABANDONED, questNameFormatted)
                end
                printToChat(formattedString)
            end

            if CA.SV.QuestCSA then
                local formattedString
                if iconTexture and CA.SV.QuestIcon then
                    formattedString = strformat(SI_LUIE_CA_QUEST_ABANDONED_WITH_ICON, zo_iconFormat(iconTexture, "75%", "75%"), questName)
                else
                    formattedString = strformat(SI_LUIE_CA_QUEST_ABANDONED, questName)
                end
                local messageParams = CENTER_SCREEN_ANNOUNCE:CreateMessageParams(CSA_CATEGORY_LARGE_TEXT)
                messageParams:SetText(formattedString)
                messageParams:SetCSAType(CENTER_SCREEN_ANNOUNCE_TYPE_QUEST_ADDED)
                CENTER_SCREEN_ANNOUNCE:AddMessageWithParams(messageParams)
            end
        end
        
    end
    g_questIndex[questName] = nil
end

function CA.QuestObjectiveComplete(eventCode, zoneIndex, poiIndex, level, previousExperience, currentExperience, championPoints)

    local function ReactivateObjectiveComplete()
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_OBJECTIVE_COMPLETED, CA.QuestObjectiveComplete)
    end

    local name, _, _, finishedDescription = GetPOIInfo(zoneIndex, poiIndex)
    local nameFormatted
    local formattedText

    if CA.SV.QuestObjectiveLong and finishedDescription ~= "" then
        nameFormatted = (strformat("|cFEFEFE<<1>>:|r <<2>>", name, finishedDescription))
    else
        nameFormatted = (strformat("|cFEFEFE<<1>>|r", name))
    end

    formattedText = strformat(SI_NOTIFYTEXT_OBJECTIVE_COMPLETE, nameFormatted)

    printToChat(formattedText)

    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_OBJECTIVE_COMPLETED)
    zo_callLater(ReactivateObjectiveComplete, 100)
end

function CA.DiscoveryExperience(eventCode, areaName, level, previousExperience, currentExperience, championPoints)
    local nameFormatted = (strformat("|cFEFEFE<<1>>|r", areaName))
    printToChat(strformat(SI_SUBZONE_NOTIFICATION_DISCOVER, nameFormatted))
end

function CA.POIDiscovered(eventCode,zoneIndex, poiIndex)
    local name, _, startDescription = GetPOIInfo(zoneIndex, poiIndex)
    printToChat(strformat("|cFEFEFE<<1>>:|r <<2>>", name, startDescription))
    if g_questComboString ~= "" then
        printToChat(g_questComboString)
    end
    g_questComboString = ""
end

function CA.QuestLogFull(eventCode)
    printToChat(GetString(SI_ERROR_QUEST_LOG_FULL))
end

function CA.QuestComplete(eventCode, questName, level, previousExperience, currentExperience, championPoints, questType, instanceDisplayType)
    local function ReactivateQuestComplete()
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_QUEST_COMPLETE, CA.QuestComplete)
    end

    local function ResetQuestRewardStatus()
        g_itemReceivedIsQuestReward = false
    end

    if CA.SV.Quest then
        local questNameFormatted = (strformat("|cFFA500<<1>>|r", questName))
        local questJournalObject = SYSTEMS:GetObject("questJournal")
        local iconTexture = questJournalObject:GetIconTexture(questType, instanceDisplayType)
        local formattedString
        if iconTexture and CA.SV.QuestIcon then
            formattedString = strformat(SI_NOTIFYTEXT_QUEST_COMPLETE_WITH_ICON, zo_iconFormat(iconTexture, 16, 16), questNameFormatted)
        else
            formattedString = strformat(SI_NOTIFYTEXT_QUEST_COMPLETE, questNameFormatted)
        end
        printToChat(formattedString)
        -- Have to unregister the event here to prevent it from spamming us twice.
        EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_QUEST_COMPLETE)
        zo_callLater(ReactivateQuestComplete, 100)
    end

    if CA.SV.Loot then
        -- We set this variable to true in order to override the [Looted] message syntax that would be applied to a quest reward normally.
        g_itemReceivedIsQuestReward = true
        zo_callLater(ResetQuestRewardStatus, 500)
    end
end

-- EVENT_QUEST_CONDITION_COUNTER_CHANGED

function CA.QuestFailed(eventCode, journalIndex, questName, conditionText, conditionType, currConditionVal, newConditionVal, conditionMax, isFailCondition, stepOverrideText, isPushed, isComplete, isConditionComplete, isStepHidden)
    -- We're only interested in this event for failure condition
    if not isFailCondition or conditionText == "TRACKER GOAL TEXT" then --TODO: Localize this string
        return
    end

    if stepOverrideText == "" then
        if conditionMax > 1 then
            printToChat(strformat(SI_ALERTTEXT_QUEST_CONDITION_FAIL, conditionText, newConditionVal, conditionMax))
        else
            printToChat(strformat(SI_ALERTTEXT_QUEST_CONDITION_FAIL_NO_COUNT, conditionText))
        end
    else
        printToChat(strformat(SI_ALERTTEXT_QUEST_CONDITION_FAIL_NO_COUNT, stepOverrideText))
    end
end

-- Checks to see if quest was accepted 50 ms after share is removed
function CA.QuestShareMessageHelper()
    if g_QuestShareFudger == false then
        printToChat(GetString(SI_LUIE_CA_GROUP_QUEST_SHARE_DECLINED))
    end
end

-- Reset message state after 100 ms
function CA.QuestShareMessageReset()
    g_QuestShareFudger = false
end

function CA.RegisterCustomStrings()
    if CA.SV.EnableCustomStrings then
        -- Group String Replacements
        SafeAddString(SI_GROUPINVITERESPONSE0, GetString(SI_LUIE_CA_GROUPINVITERESPONSE0), 2)
        SafeAddString(SI_GROUPINVITERESPONSE1, GetString(SI_LUIE_CA_GROUPINVITERESPONSE1), 3)
        SafeAddString(SI_GROUPINVITERESPONSE2, GetString(SI_LUIE_CA_GROUPINVITERESPONSE2), 3)
        SafeAddString(SI_GROUPINVITERESPONSE3, GetString(SI_LUIE_CA_GROUPINVITERESPONSE3), 2)
        SafeAddString(SI_GROUPINVITERESPONSE4, GetString(SI_LUIE_CA_GROUPINVITERESPONSE4), 3)
        SafeAddString(SI_GROUPINVITERESPONSE5, GetString(SI_LUIE_CA_GROUPINVITERESPONSE5), 3)
        SafeAddString(SI_GROUPINVITERESPONSE8, GetString(SI_LUIE_CA_GROUPINVITERESPONSE8), 2)
        SafeAddString(SI_GROUPINVITERESPONSE9, GetString(SI_LUIE_CA_GROUPINVITERESPONSE9), 2)
        SafeAddString(SI_GROUPINVITERESPONSE10, GetString(SI_LUIE_CA_GROUPINVITERESPONSE10), 1)
        SafeAddString(SI_GROUPINVITERESPONSE13, GetString(SI_LUIE_CA_GROUPINVITERESPONSE13), 1)
        SafeAddString(SI_GROUPINVITERESPONSE14, GetString(SI_LUIE_CA_GROUPINVITERESPONSE14), 1)
        SafeAddString(SI_GROUPINVITERESPONSE15, GetString(SI_LUIE_CA_GROUPINVITERESPONSE15), 1)
        SafeAddString(SI_PLAYER_TO_PLAYER_INCOMING_GROUP, GetString(SI_LUIE_CA_GROUP_INVITE_MESSAGE_ALT), 1)
        SafeAddString(SI_GROUP_INVITE_MESSAGE, GetString(SI_LUIE_CA_GROUP_INVITE_MESSAGE_ALT), 2)
        SafeAddString(SI_GROUPLEAVEREASON1, GetString(SI_LUIE_CA_GROUP_GROUPLEAVEREASON1), 3)
        SafeAddString(SI_GROUPLEAVEREASON2, GetString(SI_LUIE_CA_GROUP_MEMBER_DISBAND_MSG), 1)
        SafeAddString(SI_LUIE_CA_GROUP_INVITE_MESSAGE, GetString(SI_LUIE_CA_GROUP_INVITE_MESSAGE_ALT), 1)
        SafeAddString(SI_LUIE_CA_GROUP_LEADER_CHANGED, GetString(SI_LUIE_CA_GROUP_LEADER_CHANGED_ALT), 1)
        SafeAddString(SI_LUIE_CA_GROUP_MEMBER_JOIN, GetString(SI_LUIE_CA_GROUP_MEMBER_JOIN_ALT), 1)
        SafeAddString(SI_LUIE_CA_GROUP_MEMBER_KICKED, GetString(SI_LUIE_CA_GROUP_MEMBER_KICKED_ALT), 1)
        SafeAddString(SI_LUIE_CA_GROUP_MEMBER_LEAVE, GetString(SI_LUIE_CA_GROUP_MEMBER_LEAVE_ALT), 1)
        SafeAddString(SI_GROUP_NOTIFICATION_GROUP_LEADER_CHANGED, GetString(SI_LUIE_CA_GROUP_LEADER_CHANGED_ALT), 1)
        -- Trial String Replacement
        SafeAddString(SI_TRIAL_STARTED, GetString(SI_LUIE_CA_GROUP_TRIAL_STARTED), 1)
        SafeAddString(SI_TRIAL_FAILED, GetString(SI_LUIE_CA_GROUP_TRIAL_FAILED), 1)
        -- Group Finder String Replacements
        SafeAddString(SI_GROUPING_TOOLS_ALERT_LFG_JOINED, GetString(SI_LUIE_CA_GROUPFINDER_ALERT_LFG_JOINED), 1)
        SafeAddString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_FAIL, GetString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_FAIL_ALT), 1)
        SafeAddString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_START, GetString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_START_ALT), 1)
        SafeAddString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_PASSED, GetString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_PASSED_ALT), 1)
        -- Mara String Replacements
        SafeAddString(SI_PLEDGEOFMARARESULT0, GetString(SI_LUIE_CA_MARA_PLEDGEOFMARARESULT0), 1)
        SafeAddString(SI_PLEDGEOFMARARESULT1, GetString(SI_LUIE_CA_MARA_PLEDGEOFMARARESULT1), 1)
        SafeAddString(SI_PLEDGEOFMARARESULT2, GetString(SI_LUIE_CA_MARA_PLEDGEOFMARARESULT2), 1)
        SafeAddString(SI_PLEDGEOFMARARESULT3, GetString(SI_LUIE_CA_MARA_PLEDGEOFMARARESULT3), 2)
        SafeAddString(SI_PLEDGEOFMARARESULT4, GetString(SI_LUIE_CA_MARA_PLEDGEOFMARARESULT4), 2)
        SafeAddString(SI_PLEDGEOFMARARESULT6, GetString(SI_LUIE_CA_MARA_PLEDGEOFMARARESULT6), 1)
        SafeAddString(SI_PLEDGEOFMARARESULT7, GetString(SI_LUIE_CA_MARA_PLEDGEOFMARARESULT7), 1)
        SafeAddString(SI_PLAYER_TO_PLAYER_INCOMING_RITUAL_OF_MARA, GetString(SI_PLEDGE_OF_MARA_MESSAGE), 1)
        SafeAddString(SI_PLAYER_TO_PLAYER_OUTGOING_RITUAL_OF_MARA, GetString(SI_PLEDGE_OF_MARA_SENDER_MESSAGE), 1)
        -- Quest Share String Replacements
        SafeAddString(SI_LUIE_CA_GROUP_INCOMING_QUEST_SHARE, GetString(SI_LUIE_CA_GROUP_INCOMING_QUEST_SHARE_ALT), 1)
        SafeAddString(SI_PLAYER_TO_PLAYER_INCOMING_QUEST_SHARE, GetString(SI_LUIE_CA_GROUP_INCOMING_QUEST_SHARE_ALT), 3)
        SafeAddString(SI_QUEST_SHARE_MESSAGE, GetString(SI_LUIE_CA_GROUP_INCOMING_QUEST_SHARE_ALT), 1)
        -- Trade String Replacements
        SafeAddString(SI_TRADE_INVITE_CONFIRM, GetString(SI_LUIE_CA_TRADE_INVITE_CONFIRM), 1)
        SafeAddString(SI_PLAYER_TO_PLAYER_INCOMING_TRADE, GetString(SI_LUIE_CA_TRADE_INVITE_MESSAGE), 1)
        SafeAddString(SI_TRADE_INVITE_PROMPT, GetString(SI_LUIE_CA_TRADE_INVITE_MESSAGE), 1)
        SafeAddString(SI_TRADE_INVITE, GetString(SI_LUIE_CA_TRADE_INVITE_MESSAGE), 1)
        SafeAddString(SI_TRADE_INVITE_MESSAGE, GetString(SI_LUIE_CA_TRADE_INVITE_MESSAGE), 1)
        SafeAddString(SI_TRADEACTIONRESULT1, GetString(SI_LUIE_CA_TRADEACTIONRESULT1), 1)
        -- Friend Invite String Replacements
        SafeAddString(SI_LUIE_SLASHCMDS_FRIEND_INVITE_MSG, GetString(SI_LUIE_SLASHCMDS_FRIEND_INVITE_MSG_ALT), 1)
        SafeAddString(SI_FRIENDS_LIST_IGNORE_ADDED, GetString(SI_LUIE_CA_FRIENDS_LIST_IGNORE_ADDED), 1)
        SafeAddString(SI_FRIENDS_LIST_IGNORE_REMOVED, GetString(SI_LUIE_CA_FRIENDS_LIST_IGNORE_REMOVED), 1)
        SafeAddString(SI_PLAYER_TO_PLAYER_INCOMING_FRIEND_REQUEST, GetString(SI_LUIE_CA_FRIENDS_INCOMING_FRIEND_REQUEST), 1)
        SafeAddString(SI_FRIENDS_LIST_FRIEND_LOGGED_ON, GetString(SI_LUIE_CA_FRIENDS_LIST_LOGGED_ON), 1)
        SafeAddString(SI_FRIENDS_LIST_FRIEND_CHARACTER_LOGGED_ON, GetString(SI_LUIE_CA_FRIENDS_LIST_CHARACTER_LOGGED_ON), 1)
        SafeAddString(SI_FRIENDS_LIST_FRIEND_LOGGED_OFF, GetString(SI_LUIE_CA_FRIENDS_LIST_LOGGED_OFF), 1)
        SafeAddString(SI_FRIENDS_LIST_FRIEND_CHARACTER_LOGGED_OFF, GetString(SI_LUIE_CA_FRIENDS_LIST_CHARACTER_LOGGED_OFF), 1)
        SafeAddString(SI_LUIE_CA_FRIENDS_FRIEND_ADDED, GetString(SI_LUIE_CA_FRIENDS_FRIEND_ADDED_ALT), 1)
        SafeAddString(SI_LUIE_CA_FRIENDS_FRIEND_REMOVED, GetString(SI_LUIE_CA_FRIENDS_FRIEND_REMOVED_ALT), 1)
        SafeAddString(SI_LUIE_CA_FRIENDS_INCOMING_FRIEND_REQUEST, GetString(SI_LUIE_CA_FRIENDS_INCOMING_FRIEND_REQUEST_ALT), 1)
        -- Guild Invite String Replacements
        SafeAddString(SI_GUILD_ROSTER_INVITED_MESSAGE, GetString(SI_LUIE_CA_GUILD_ROSTER_INVITED_MESSAGE_ALT), 2)
        SafeAddString(SI_PLAYER_TO_PLAYER_INCOMING_GUILD_REQUEST, GetString(SI_LUIE_CA_GUILD_INCOMING_GUILD_REQUEST_ALT), 1)
        SafeAddString(SI_GUILD_INVITE_MESSAGE, GetString(SI_LUIE_CA_GUILD_INVITE_MESSAGE), 3)
        SafeAddString(SI_LUIE_CA_GUILD_INCOMING_GUILD_REQUEST, GetString(SI_LUIE_CA_GUILD_INCOMING_GUILD_REQUEST_ALT), 1)
        SafeAddString(SI_LUIE_CA_GUILD_ROSTER_INVITED_MESSAGE, GetString(SI_LUIE_CA_GUILD_ROSTER_INVITED_MESSAGE_ALT), 1)
        SafeAddString(SI_GUILD_ROSTER_ADDED, GetString(SI_LUIE_CA_GUILD_ROSTER_ADDED), 2)
        SafeAddString(SI_GUILD_ROSTER_REMOVED, GetString(SI_LUIE_CA_GUILD_ROSTER_REMOVED), 2)
        SafeAddString(SI_LUIE_CA_GUILD_RANK_CHANGED, GetString(SI_LUIE_CA_GUILD_RANK_CHANGED_ALT), 1)
        -- Duel String Replacements
        SafeAddString(SI_PLAYER_TO_PLAYER_INCOMING_DUEL, GetString(SI_LUIE_CA_DUEL_INVITE_RECEIVED), 1)
        SafeAddString(SI_DUEL_INVITE_MESSAGE, GetString(SI_LUIE_CA_DUEL_INVITE_RECEIVED), 1)
        SafeAddString(SI_DUEL_INVITE_ACCEPTED, GetString(SI_LUIE_CA_DUEL_INVITE_ACCEPTED), 1)
        SafeAddString(SI_DUEL_INVITE_DECLINED, GetString(SI_LUIE_CA_DUEL_INVITE_DECLINED), 1)
        SafeAddString(SI_DUEL_INVITE_CANCELED, GetString(SI_LUIE_CA_DUEL_INVITE_CANCELED), 1)
        SafeAddString(SI_DUEL_INVITE_SENT, GetString(SI_LUIE_CA_DUEL_INVITE_SENT), 1)
        SafeAddString(SI_DUEL_INVITE_RECEIVED, GetString(SI_LUIE_CA_DUEL_INVITE_RECEIVED), 1)
        SafeAddString(SI_PLAYER_TO_PLAYER_INVITE_DUEL, GetString(SI_LUIE_CA_DUEL_INVITE_PLAYER), 1)
        SafeAddString(SI_DUELING_COUNTDOWN_CSA, GetString(SI_LUIE_CA_DUEL_COUNTDOWN_CSA), 1)
        SafeAddString(SI_DUELING_NEAR_BOUNDARY_CSA, GetString(SI_LUIE_CA_DUEL_NEAR_BOUNDARY_CSA), 1)
        SafeAddString(SI_DUELRESULT0, GetString(SI_LUIE_CA_DUEL_RESULT0), 1)
        SafeAddString(SI_DUELRESULT1, GetString(SI_LUIE_CA_DUEL_RESULT1), 1)
        SafeAddString(SI_DUELSTATE1, GetString(SI_LUIE_CA_DUEL_STATE1), 1)
        SafeAddString(SI_DUELSTATE1, GetString(SI_LUIE_CA_DUEL_STATE2), 1)
        SafeAddString(SI_DUELINVITEFAILREASON1, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON1), 1)
        SafeAddString(SI_DUELINVITEFAILREASON4, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON4), 1)
        SafeAddString(SI_DUELINVITEFAILREASON5, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON5), 1)
        SafeAddString(SI_DUELINVITEFAILREASON6, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON6), 1)
        SafeAddString(SI_DUELINVITEFAILREASON7, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON7), 1)
        SafeAddString(SI_DUELINVITEFAILREASON8, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON8), 1)
        SafeAddString(SI_DUELINVITEFAILREASON9, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON9), 1)
        SafeAddString(SI_DUELINVITEFAILREASON10, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON10), 1)
        SafeAddString(SI_DUELINVITEFAILREASON12, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON12), 1)
        SafeAddString(SI_DUELINVITEFAILREASON14, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON14), 1)
        SafeAddString(SI_DUELINVITEFAILREASON16, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON16), 1)
        SafeAddString(SI_DUELINVITEFAILREASON18, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON18), 1)
        SafeAddString(SI_DUELINVITEFAILREASON20, GetString(SI_LUIE_CA_DUEL_INVITE_FAILREASON20), 1)
        -- Mail String Replacements
        SafeAddString(SI_SENDMAILRESULT2, GetString(SI_LUIE_CA_MAIL_SENDMAILRESULT2), 1)
        SafeAddString(SI_SENDMAILRESULT3, GetString(SI_LUIE_CA_MAIL_SENDMAILRESULT3), 1)
        -- Regroup Replacement String
        SafeAddString(SI_LUIE_SLASHCMDS_REGROUP_REINVITE_SENT_MSG, GetString(SI_LUIE_SLASHCMDS_REGROUP_REINVITE_SENT_MSG_ALT), 1)
        -- Quest String Replacements
        SafeAddString(SI_NOTIFYTEXT_QUEST_ACCEPT_WITH_ICON, GetString(SI_LUIE_CA_QUEST_ACCEPT_WITH_ICON), 1)
        SafeAddString(SI_NOTIFYTEXT_QUEST_COMPLETE_WITH_ICON, GetString(SI_LUIE_CA_QUEST_COMPLETE_WITH_ICON), 1)
        SafeAddString(SI_ERROR_QUEST_LOG_FULL, GetString(SI_LUIE_CA_QUEST_LOG_FULL), 1)
        -- POI Discovery
        SafeAddString(SI_SUBZONE_NOTIFICATION_DISCOVER, GetString(SI_LUIE_CA_QUEST_DISCOVER), 4)
    end
end

function CA.LFGJoined(eventCode, locationName)
    
    -- DEBUG OPTIONS
    --d("LFG JOINED")
    --if IsInLFGGroup() then d("We are in an LFG group") else d ("We are not in an LFG group") end
    
    if CA.SV.GroupLFG and not g_LFGJoinAntiSpam then
        printToChat(strformat(GetString(SI_LUIE_CA_GROUPFINDER_ALERT_LFG_JOINED), locationName))
        zo_callLater (function() g_rcUpdateDeclineOverride = false end, 5000)
        g_lfgDisableGroupEvents = true
        zo_callLater (function() g_lfgDisableGroupEvents = false end, 2500)
    end
    g_joinLFGOverride = true
    g_LFGJoinAntiSpam = true
    g_rcUpdateDeclineOverride = true
end

function CA.LFGLeft(eventCode)
    g_leaveLFGOverride = true
end

function CA.CheckLFGStatusJoin()
    if not g_stopGroupLeaveQueue then
        if not g_lfgDisableGroupEvents then
            if IsInLFGGroup() and not g_joinLFGOverride then
                printToChat(GetString(SI_LUIE_CA_GROUP_MEMBER_JOIN_SELF_LFG))
            elseif not IsInLFGGroup() and not g_joinLFGOverride then
                printToChat(GetString(SI_LUIE_CA_GROUP_MEMBER_JOIN_SELF))
            end
        end
        g_joinLFGOverride = false
    end
end

function CA.PrintJoinStatusNotSelf(SendString)
    if not g_stopGroupLeaveQueue then
        printToChat(SendString)
    end
end

function CA.CheckLFGStatusLeave(SendString, WasKicked)
    if not (g_stopGroupLeaveQueue and g_lfgDisableGroupEvents) then
        if SendString ~= "" then
            printToChat(SendString)
        end
        if not g_leaveLFGOverride then
            if WasKicked then
                printToChat(GetString(SI_LUIE_CA_GROUP_MEMBER_KICKED_SELF))
            end
            if GetGroupSize() == 0 then
                printToChat(GetString(SI_LUIE_CA_GROUP_QUIT))
            end
        elseif g_leaveLFGOverride and GetGroupSize() == 0 then
            printToChat(GetString(SI_LUIE_CA_GROUP_QUIT_LFG))
        end
    end
    g_leaveLFGOverride = false
end

function CA.GroupFindReplacementNew(eventCode)
    local activityType, activityIndex = GetLFGFindReplacementNotificationInfo()
    -- This event sometimes fires when forming a group and will display with Type 0 and Index 1 (Craglorn)
    local name = GetLFGOption(activityType, activityIndex)
    if name == "Craglorn" then return end -- TODO: Localize - note can't use numbers here because if Type is nil it also returns as Craglorn

    
    local function printNameLater(name)
        printToChat(strformat(GetString(SI_LFG_FIND_REPLACEMENT_TEXT), name))
    end
    
    if CA.SV.GroupLFG then
        zo_callLater(function() printNameLater(name) end, 100)
    end
end

function CA.ActivityComplete(eventCode)
    printToChat(GetString(SI_ACTIVITY_FINDER_ACTIVITY_COMPLETE_ANNOUNCEMENT_TEXT))
end

function CA.ActivityStatusUpdate(eventCode, status)
    --d("status: " .. status)
    if g_showActivityStatus then
        -- If we are NOT queued and were formerly queued, forming group, or in a ready check, display left queue message.
        if status == ACTIVITY_FINDER_STATUS_NONE and (g_savedQueueValue == 1 or g_savedQueueValue == 4) then
            if CA.SV.GroupLFG then printToChat(GetString(SI_LUIE_CA_GROUPFINDER_QUEUE_END)) end
        end
        -- If we are queued and previously we were not queued then display a message.
        if status == ACTIVITY_FINDER_STATUS_QUEUED and (g_savedQueueValue == 0 or g_savedQueueValue == 2) then
            if CA.SV.GroupLFG then printToChat(GetString(SI_LUIE_CA_GROUPFINDER_QUEUE_START)) end
        end
        -- If we were in the queue and are now in progress without a ready check triggered, we left the queue to find a replacement member so this should be displayed.
        if status == ACTIVITY_FINDER_STATUS_IN_PROGRESS and (g_savedQueueValue == 1) then
            if CA.SV.GroupLFG then printToChat(GetString(SI_LUIE_CA_GROUPFINDER_QUEUE_END)) end
        end
        if g_savedQueueValue == 5 and status == 1 then status = 5 end -- Fixes an error that occurs when joining an LFG instance while already in an LFG group.    
    end

    if status == 0 then
        g_showRCUpdates = true
    end -- Should always trigger at the end result of a ready check failing.
    if status == 4 then
        g_showRCUpdates = false
    end

    -- Prevents potential consecutive events from spamming
    if status == 5 and g_savedQueueValue ~= 5 then
        printToChat(GetString(SI_LFGREADYCHECKCANCELREASON4))
        g_stopGroupLeaveQueue = true
        g_showRCUpdates = true
        g_LFGJoinAntiSpam = false
        g_showActivityStatus = false
        zo_callLater(CA.ActivityStatusRefresh, 1000)
        zo_callLater(CA.ResetGroupLeaveQueue, 1000)
    end
    
    g_savedQueueValue = status
    
end

function CA.ActivityQueueResult(eventCode, result)
    if CA.SV.GroupLFG then
        printToChat(GetString("SI_ACTIVITYQUEUERESULT", result))
    end   
    --[[ Old Option just in case this is printing duplicate messages or anything
        if result == ACTIVITY_QUEUE_RESULT_INCOMPATIBLE_GROUP then
            printToChat(GetString(SI_ACTIVITYQUEUERESULT9))
        end
        if result == ACTIVITY_QUEUE_RESULT_MEMBERS_OFFLINE then
            printToChat(GetString(SI_ACTIVITYQUEUERESULT14))
        end
        if result == ACTIVITY_QUEUE_RESULT_ON_QUEUE_COOLDOWN then
            printToChat(GetString(SI_ACTIVITYQUEUERESULT12))
        end
        if result == ACTIVITY_QUEUE_RESULT_MEMBER_CANCELED_READY_CHECK then
            printToChat(GetString(SI_ACTIVITYQUEUERESULT19))
        end
        if result == ACTIVITY_QUEUE_RESULT_DLC_LOCKED then
            printToChat(GetString(SI_ACTIVITYQUEUERESULT6))
        end
    end
    ]]--

    g_showRCUpdates = true
end

function CA.ReadyCheckCancel(eventCode, reason)
    --d("Ready check cancel")

    if reason ~= LFG_READY_CHECK_CANCEL_REASON_NOT_IN_READY_CHECK and reason ~= LFG_READY_CHECK_CANCEL_REASON_GROUP_FORMED_SUCCESSFULLY then
        if CA.SV.GroupLFG then printToChat(GetString("SI_LFGREADYCHECKCANCELREASON", reason)) end
    end
    
    -- Sometimes if another player cancels slightly before a player in your group cancels, the "you have been placed in the front of the queue message displays. If this is the case, we want to show queue left for that event."
    if reason ~= LFG_READY_CHECK_CANCEL_REASON_GROUP_REPLACED_IN_QUEUE then
        g_showActivityStatus = false
        zo_callLater(CA.ActivityStatusRefresh, 1000)
    end
    
    g_showRCUpdates = true
end

function CA.ActivityStatusRefresh()
    g_showActivityStatus = true
end

function CA.ReadyCheckUpdate(eventCode)
    --d("ready check update")

    local activityType, playerRole = GetLFGReadyCheckNotificationInfo()
    local tanksAccepted, tanksPending, healersAccepted, healersPending, dpsAccepted, dpsPending = GetLFGReadyCheckCounts()
    --d(tanksAccepted .. " " .. tanksPending .. " " .. healersAccepted .. " " .. healersPending .. " " .. dpsAccepted .." " .. dpsPending)
    if g_showRCUpdates then
        local activityName

        if activityType == 0 then
            return
        end
        if activityType == LFG_ACTIVITY_AVA then
            activityName = GetString(SI_LFGACTIVITY1) -- TODO: Untested
        end
        if activityType == LFG_ACTIVITY_BATTLE_GROUND_NON_CHAMPION then
            activityName = strformat("<<1>> <<2>>", GetString(SI_LFGACTIVITY7), GetString(SI_BATTLEGROUND_FINDER_GENERAL_ACTIVITY_DESCRIPTOR)) -- Not yet implemented yet
        end
        if activityType == LFG_ACTIVITY_BATTLE_GROUND_CHAMPION then
            activityName = strformat("<<1>> <<2>>", GetString(SI_LFGACTIVITY5), GetString(SI_BATTLEGROUND_FINDER_GENERAL_ACTIVITY_DESCRIPTOR)) -- Not yet implemented yet
        end
        if activityType == LFG_ACTIVITY_BATTLE_GROUND_LOW_LEVEL then
            activityName = strformat("<<1>> <<2>>", GetString(SI_LFGACTIVITY8), GetString(SI_BATTLEGROUND_FINDER_GENERAL_ACTIVITY_DESCRIPTOR)) -- Not yet implemented yet
        end
        if activityType == LFG_ACTIVITY_DUNGEON then
            activityName = strformat("<<1>> <<2>>", GetString(SI_LFGACTIVITY2), GetString(SI_DUNGEON_FINDER_GENERAL_ACTIVITY_DESCRIPTOR))
        end
        if activityType == LFG_ACTIVITY_HOME_SHOW then
            activityName = GetString(SI_LFGACTIVITY6) -- TODO: Untested
        end
        if activityType == LFG_ACTIVITY_MASTER_DUNGEON then
            activityName = strformat("<<1>> <<2>>", GetString(SI_LFGACTIVITY3), GetString(SI_DUNGEON_FINDER_GENERAL_ACTIVITY_DESCRIPTOR))
        end
        if activityType == LFG_ACTIVITY_TRIAL then
            activityName = GetString(SI_LFGACTIVITY4) -- TODO: Untested
        end

        if playerRole ~= 0 then
            local roleIcon = (strformat("|t16:16:<<1>>|t", GetRoleIcon(playerRole)))
            local roleString = GetString("SI_LFGROLE", playerRole)
            if CA.SV.GroupLFG then
                printToChat(strformat(GetString(SI_LUIE_CA_GROUPFINDER_READY_CHECK_ACTIVITY_ROLE), activityName, roleIcon, roleString ))
            end
        else
            if CA.SV.GroupLFG then
                printToChat(strformat(GetString(SI_LUIE_CA_GROUPFINDER_READY_CHECK_ACTIVITY), activityName))
            end
        end
    end
    
    g_showRCUpdates = false
    
    if not g_showRCUpdates and (tanksAccepted == 0 and tanksPending == 0 and healersAccepted == 0 and healersPending == 0 and dpsAccepted == 0 and dpsPending == 0) and not g_rcUpdateDeclineOverride then
        if CA.SV.GroupLFG and g_rcSpamPrevention == false then
            printToChat(GetString(SI_LFGREADYCHECKCANCELREASON3))
            g_rcSpamPrevention = true
            zo_callLater(CA.ResetRCSpamPrevention, 1000)
            g_showActivityStatus = false
            zo_callLater(CA.ActivityStatusRefresh, 1000)
            g_showRCUpdates = true
        end
    end
    
end

function CA.ResetGroupLeaveQueue()
    g_stopGroupLeaveQueue = false
end

function CA.ResetRCSpamPrevention()
    g_rcSpamPrevention = false
end

function CA.VoteFailed( eventCode, failureReason, descriptor)
    if CA.SV.GroupVote then
        printToChat(GetString("SI_GROUPELECTIONFAILURE", failureReason))
    end
end

function CA.VoteNotify(eventCode)
    local electionType, timeRemainingSeconds, electionDescriptor, targetUnitTag = GetGroupElectionInfo()
    if electionType == 2 then -- Ready Check
        if CA.SV.GroupVote then
            printToChat(GetString(SI_GROUP_ELECTION_READY_CHECK_MESSAGE))
        end
    end

    if electionType == 3 then -- Vote Kick
        if CA.SV.GroupVote then
            local kickMemberName = GetUnitName(targetUnitTag)
            local kickMemberAccountName = GetUnitDisplayName(targetUnitTag)

            local characterNameLink = ZO_LinkHandler_CreateCharacterLink(kickMemberName)
            local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(kickMemberAccountName)
            local displayBothString = ( strformat("<<1>><<2>>", kickMemberName, kickMemberAccountName) )
            local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, kickMemberAccountName)
            if CA.SV.ChatPlayerDisplayOptions == 1 then
                printToChat(strformat(GetString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_START), displayNameLink))
            end
            if CA.SV.ChatPlayerDisplayOptions == 2 then
                printToChat(strformat(GetString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_START), characterNameLink))
            end
            if CA.SV.ChatPlayerDisplayOptions == 3 then
                printToChat(strformat(GetString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_START), displayBoth))
            end
        end
    end
end

function CA.VoteResult(eventCode, electionResult, descriptor)
    local electionType, timeRemainingSeconds, electionDescriptor, targetUnitTag = GetGroupElectionInfo()
    if descriptor == "[ZO_READY_CHECK]" then
        if CA.SV.GroupVote then
            if electionResult == 1 then
                printToChat(GetString(SI_GROUP_ELECTION_READY_CHECK_FAILED))
            end
            if electionResult == 4 then
                printToChat(GetString(SI_GROUP_ELECTION_READY_CHECK_PASSED))
            end
            if electionResult == 5 then
                printToChat(GetString(SI_GROUP_ELECTION_READY_CHECK_FAILED))
            end
        end
    end
    if descriptor == "[ZO_NONE]" then
        if CA.SV.GroupVote then
            local KickCarry
            local kickMemberName = GetUnitName(targetUnitTag)
            local kickMemberAccountName = GetUnitDisplayName(targetUnitTag)

            local characterNameLink = ZO_LinkHandler_CreateCharacterLink(kickMemberName)
            local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(kickMemberAccountName)
            local displayBothString = ( strformat("<<1>><<2>>", kickMemberName, kickMemberAccountName) )
            local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, kickMemberAccountName)

            if CA.SV.ChatPlayerDisplayOptions == 1 then
                KickCarry = displayNameLink
            end
            if CA.SV.ChatPlayerDisplayOptions == 2 then
                KickCarry = characterNameLink
            end
            if CA.SV.ChatPlayerDisplayOptions == 3 then
                KickCarry = displayBoth
            end

            if electionResult == 1 then
                printToChat(strformat(GetString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_FAIL), KickCarry))
            end
            if electionResult == 2 then
                printToChat(strformat(GetString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_FAIL), KickCarry))
            end
            if electionResult == 4 then
                printToChat(strformat(GetString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_PASSED), KickCarry))
            end
            if electionResult == 5 then
                printToChat(strformat(GetString(SI_LUIE_CA_GROUPFINDER_VOTEKICK_FAIL), KickCarry))
            end
        end
    end
end

function CA.VoteRequested(eventCode, descriptor)
    if CA.SV.GroupVote then
        if descriptor == "[ZO_READY_CHECK]" then
            printToChat(GetString(SI_GROUP_ELECTION_READY_CHECK_REQUESTED))
        end
        if descriptor == "[ZO_NONE]" then
            printToChat(GetString(SI_GROUP_ELECTION_REQUESTED))
        end
    end
end

function CA.TrialStarted(eventCode, trialName, score, totalTime)
    local formattedName = strformat("|cFEFEFE<<1>>|r", trialName)
    printToChat(strformat(SI_TRIAL_STARTED, formattedName))
end

function CA.TrialComplete(eventCode, trialName, score)
    local formattedName = strformat("|cFEFEFE<<1>>|r", trialName)
    printToChat(strformat(SI_TRIAL_COMPLETED_LARGE, formattedName))

    -- SI_LUIE_CA_GROUP_TRIAL_SCORETALLY          -- "Final Score <<1>> Total Time <<2>> Vitality Bonus <<3>> <<4>>"

    local wasUnderTargetTime = GetRaidDuration() <= GetRaidTargetTime()
    local totalTime = GetRaidDuration()
    local formattedTime = ZO_FormatTimeMilliseconds(totalTime, TIME_FORMAT_STYLE_COLONS, TIME_FORMAT_PRECISION_SECONDS)
    local vitalityBonus = GetCurrentRaidLifeScoreBonus()
    local currentCount = GetRaidReviveCountersRemaining()
    local maxCount = GetCurrentRaidStartingReviveCounters()

    local VitalityCounterString = strformat("<<1>> <<2>>/<<3>>", zo_iconFormatInheritColor("esoui/art/trials/vitalitydepletion.dds", 16, 16), currentCount, maxCount )
    local FinalScore = ZO_DEFAULT_ENABLED_COLOR:Colorize(score)
    vitalityBonus = ZO_DEFAULT_ENABLED_COLOR:Colorize(vitalityBonus)
    if currentCount == 0 then
        VitalityCounterString = ZO_DISABLED_TEXT:Colorize(VitalityCounterString)
    else
        VitalityCounterString = ZO_DEFAULT_ENABLED_COLOR:Colorize(VitalityCounterString)
    end
    if wasUnderTargetTime then
        formattedTime = ZO_DEFAULT_ENABLED_COLOR:Colorize(formattedtime)
    else
        formattedTime = ZO_ERROR_COLOR:Colorize(formattedtime)
    end

    printToChat(strformat(SI_LUIE_CA_GROUP_TRIAL_SCORETALLY, FinalScore, formattedTime, vitalityBonus, VitalityCounterString))
end

function CA.TrialFailed(eventCode, trialName, weekly)
    local formattedName = strformat("|cFEFEFE<<1>>|r", trialName)
    printToChat(strformat(SI_TRIAL_FAILED, formattedName))
end

function CA.TrialScore(eventCode, trialName, score, isWeekly)
    local formattedString
    local formattedName = strformat("|cFEFEFE<<1>>|r", trialName)
    if isWeekly then
        formattedString = strformat(SI_TRIAL_NEW_BEST_SCORE_WEEKLY, formattedName)
    else
        formattedString = strformat(SI_TRIAL_NEW_BEST_SCORE_LIFETIME, formattedName)
    end

    local function PrintTrialScore()
        printToChat(formattedString)
    end

    zo_callLater(PrintTrialScore, 50)
end

-- Triggers when the player either accepts or declines an invite. We set g_groupJoinFudger to true here, and if the next event is GroupUpdate then it plays a message, if not, the next invite event resets it.
function CA.GroupInviteRemoved(eventCode)
    g_groupJoinFudger = true
end

-- Triggers when the group composition changes for a Party going from 2 people to 3+, we use this to display a message to the player joining the group.
function CA.GroupUpdate(eventCode)
    if g_groupJoinFudger then
        zo_callLater(CA.CheckLFGStatusJoin, 100)
    end
    g_groupJoinFudger = false
    local groupSize = GetGroupSize()
    if groupSize > 1 then
        g_areWeGrouped = true
    end
end

--[[ Would love to be able to use this function but its too buggy for now. Spams every single time someone updates their role, as well as when people join/leave group. If the player joins a large party for the first time then
this broadcasts the role of every single player in the party. Too bad this doesn't only trigger when someone in group actually updates their role instead.
No localization support yet.
function CA.GMRC(eventCode, unitTag, dps, healer, tank)

local updatedRoleName = GetUnitName(unitTag)
local updatedRoleAccountName = GetUnitDisplayName(unitTag)

local characterNameLink = ZO_LinkHandler_CreateCharacterLink(updatedRoleName)
local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(updatedRoleAccountName)
local displayBothString = ( strformat("<<1>><<2>>", updatedRoleName, updatedRoleAccountName) )
local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, updatedRoleAccountName)

local rolestring1 = ""
local rolestring2 = ""
local rolestring3 = ""
local message = ""

    -- Return here in case something happens
    if not (dps or healer or tank) then
        return
    end

    -- fill in strings for roles
    if dps then
        rolestring3 = "DPS"
    end
    if healer then
        rolestring2 = "Healer"
    end
    if tank then
        rolestring1 = "Tank"
    end

    -- Get appropriate 2nd string for role
    if dps and not (healer or tank) then
        message = (strformat("<<1>>", rolestring3) )
    elseif healer and not (dps or tank) then
        message = (strformat("<<1>>", rolestring2) )
    elseif tank and not (dps or healer) then
        message = (strformat("<<1>>", rolestring1) )
    elseif dps and healer and not tank then
        message = (strformat("<<1>>, <<2>>", rolestring2, rolestring3) )
    elseif dps and tank and not healer then
        message = (strformat("<<1>>, <<2>>", rolestring1, rolestring3) )
    elseif healer and tank and not dps then
        message = (strformat("<<1>>, <<2>>", rolestring1, rolestring2) )
    elseif dps and healer and tank then
        message = (strformat("<<1>>, <<2>>, <<3>>", rolestring1, rolestring2, rolestring3) )
    end

    if updatedRoleName ~= g_playerNameFormatted then
        if CA.SV.ChatPlayerDisplayOptions == 1 then
            printToChat(strformat("|cFEFEFE<<1>>|r has updated their role: <<2>>", displayNameLink, message) )
        end
        if CA.SV.ChatPlayerDisplayOptions == 2 then
            printToChat(strformat("|cFEFEFE<<1>>|r has updated their role: <<2>>", characterNameLink, message) )
        end
        if CA.SV.ChatPlayerDisplayOptions == 3 then
            printToChat(strformat("|cFEFEFE<<1>>|r has updated their role: <<2>>", displayBoth, message) )
        end
    else
        printToChat(strformat("You have updated your role: <<1>>", message) )
    end
end
]]--

--[[ Would love to be able to use this function but its too buggy for now. When a single player disconnects for the first time in the group, another player will see a message for the online/offline status of every other
player in the group. Possibly reimplement and limit it to 2 player groups?
No localization support yet.
function CA.GMCS(eventCode, unitTag, isOnline)

    local onlineRoleName = GetUnitName(unitTag)
    local onlineRoleDisplayName = GetUnitDisplayName(unitTag)

    local characterNameLink = ZO_LinkHandler_CreateCharacterLink(onlineRoleName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(onlineRoleDisplayName)
    local displayBothString = ( strformat("<<1>><<2>>", onlineRoleName, onlineRoleDisplayName) )
    local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, onlineRoleDisplayName)


    if not isOnline and onlineRoleName ~=g_playerNameFormatted then
        if CA.SV.ChatPlayerDisplayOptions == 1 then
            printToChat(strformat("|cFEFEFE<<1>>|r has disconnected.", displayNameLink) )
        end
        if CA.SV.ChatPlayerDisplayOptions == 2 then
            printToChat(strformat("|cFEFEFE<<1>>|r has disconnected.", characterNameLink) )
        end
        if CA.SV.ChatPlayerDisplayOptions == 3 then
            printToChat(strformat("|cFEFEFE<<1>>|r has disconnected.", displayBoth) )
        end
    elseif isOnline and onlineRoleName ~=g_playerNameFormatted then
        if CA.SV.ChatPlayerDisplayOptions == 1 then
            printToChat(strformat("|cFEFEFE<<1>>|r has reconnected.", displayNameLink) )
        end
        if CA.SV.ChatPlayerDisplayOptions == 2 then
            printToChat(strformat("|cFEFEFE<<1>>|r has reconnected.", characterNameLink) )
        end
        if CA.SV.ChatPlayerDisplayOptions == 3 then
            printToChat(strformat("|cFEFEFE<<1>>|r has reconnected.", displayBoth) )
        end
    end
end
]]--

-- Prints a message to chat when another player sends us a group invite
function CA.OnGroupInviteReceived(eventCode, inviterName, inviterDisplayName)
    g_groupJoinFudger = false

    local characterNameLink = ZO_LinkHandler_CreateCharacterLink(inviterName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(inviterDisplayName)
    local displayBothString = ( strformat("<<1>><<2>>", inviterName, inviterDisplayName) )
    local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, inviterDisplayName)

    if CA.SV.ChatPlayerDisplayOptions == 1 then
        printToChat(strformat(GetString(SI_LUIE_CA_GROUP_INVITE_MESSAGE), displayNameLink))
    end
    if CA.SV.ChatPlayerDisplayOptions == 2 then
        printToChat(strformat(GetString(SI_LUIE_CA_GROUP_INVITE_MESSAGE), characterNameLink))
    end
    if CA.SV.ChatPlayerDisplayOptions == 3 then
        printToChat(strformat(GetString(SI_LUIE_CA_GROUP_INVITE_MESSAGE), displayBoth))
    end
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_GROUP_INVITE_RECEIVED) -- On receiving a group invite, it fires 2 events, we disable the event handler temporarily for this then re-enable it after.
    zo_callLater(CA.RefreshGroupInviteEnable, 100)
end

-- Prints a message to chat when invites are declined or failed.
function CA.OnGroupInviteResponse(eventCode, inviterName, response, inviterDisplayName)
    
    local link
    local nameToUse = ZO_GetPrimaryPlayerName(inviterDisplayName, inviterName)
                if nameToUse == "" then
                    nameToUse = ZO_GetSecondaryPlayerName(inviterDisplayName, inviterName)
                    link = ZO_LinkHandler_CreateDisplayNameLink(nameToUse)
                else
                    link = ZO_LinkHandler_CreateCharacterLink(nameToUse)
                end

    if nameToUse ~= "" then
        if response ~= 0 and response ~= 1 then
            printToChat(strformat(GetString("SI_GROUPINVITERESPONSE", response), link)) --or GetString(SI_PLAYER_BUSY)
        elseif response == 1 and g_playerName ~= inviterName then
            g_groupFormFudger = true
            printToChat(GetString(SI_LUIE_CA_GROUP_MEMBER_JOIN_SELF))
        end
    end
end

-- Prints a message to chat when the leader of the group is updated
function CA.OnGroupLeaderUpdate(eventCode, leaderTag)
    local groupLeaderName = GetUnitName(leaderTag)
    local groupLeaderAccount = GetUnitDisplayName(leaderTag)
    
    -- Just in case we can't get a value (seems to happen sometimes in LFG)
    if groupLeaderName == "" or groupLeaderName == nil then return end

    local characterNameLink = ZO_LinkHandler_CreateCharacterLink(groupLeaderName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(groupLeaderAccount)
    local displayBothString = ( strformat("<<1>><<2>>", groupLeaderName, groupLeaderAccount) )
    local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, groupLeaderAccount)
    
    local displayString
    local function displayGroupLeaderUpdate()
        if not g_lfgDisableGroupEvents then
            printToChat(displayString)
        end
    end
        
    if g_playerNameFormatted ~= groupLeaderName then -- If another player became the leader
        if CA.SV.ChatPlayerDisplayOptions == 1 then
            displayString = (strformat(GetString(SI_LUIE_CA_GROUP_LEADER_CHANGED), displayNameLink))
            zo_callLater(displayGroupLeaderUpdate, 100)
        end
        if CA.SV.ChatPlayerDisplayOptions == 2 then
            displayString = (strformat(GetString(SI_LUIE_CA_GROUP_LEADER_CHANGED), characterNameLink))
            zo_callLater(displayGroupLeaderUpdate, 100)
        end
        if CA.SV.ChatPlayerDisplayOptions == 3 then
            displayString = (strformat(GetString(SI_LUIE_CA_GROUP_LEADER_CHANGED), displayBoth))
            zo_callLater(displayGroupLeaderUpdate, 100)
        end
    elseif g_playerNameFormatted == groupLeaderName then -- If the player character became the leader
        displayString = (GetString(SI_LUIE_CA_GROUP_LEADER_CHANGED_SELF))
        zo_callLater(displayGroupLeaderUpdate, 100)
    end
end

-- Prints a message to chat when a group member joins
function CA.OnGroupMemberJoined(eventCode, memberName)
    g_groupJoinFudger = false
    local g_partyStack = { }
    local joinedMemberName = ""
    local joinedMemberAccountName = ""

    -- Iterate through group member indices to get the relevant UnitTags
    for i = 1,40 do
        local memberTag = GetGroupUnitTagByIndex(i)
        if memberTag == nil then
            break -- Once we reach a nil value (aka no party member there, stop the loop)
        end
        g_partyStack[i] = { memberTag = memberTag }
    end

    -- Iterate through UnitTags to get the member who just joined
    for i = 1, #g_partyStack do
        local unitname = GetRawUnitName(g_partyStack[i].memberTag)
        if unitname == memberName then
            joinedMemberName = GetUnitName(g_partyStack[i].memberTag)
            joinedMemberAccountName = GetUnitDisplayName(g_partyStack[i].memberTag)
            break -- Break loop once we get the value we need
        end
    end

    if joinedMemberName ~= "" and joinedMemberName ~= nil then
        if g_playerName ~= memberName then
            -- Can occur if event is before EVENT_PLAYER_ACTIVATED
            local groupJoinName
            local characterNameLink = ZO_LinkHandler_CreateCharacterLink(joinedMemberName)
            local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(joinedMemberAccountName)
            local displayBothString = ( strformat("<<1>><<2>>", joinedMemberName, joinedMemberAccountName) )
            local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, joinedMemberAccountName)
            if CA.SV.ChatPlayerDisplayOptions == 1 then
                groupJoinName = displayNameLink
            end
            if CA.SV.ChatPlayerDisplayOptions == 2 then
                groupJoinName = characterNameLink
            end
            if CA.SV.ChatPlayerDisplayOptions == 3 then
                groupJoinName = displayBoth
            end
            local SendString = (strformat(GetString(SI_LUIE_CA_GROUP_MEMBER_JOIN), groupJoinName))
            zo_callLater(function() CA.PrintJoinStatusNotSelf(SendString) end, 100)
        elseif g_playerName == memberName and not g_groupFormFudger then
            zo_callLater(CA.CheckLFGStatusJoin, 100)
        end
    end

    g_partyStack = { }
    g_groupFormFudger = false
    g_areWeGrouped = true
end

-- Prints a message to chat when a group member leaves
function CA.OnGroupMemberLeft(eventCode, memberName, reason, isLocalPlayer, isLeader, memberDisplayName, actionRequiredVote)
    local memberLeftName
    local SendString
    local characterNameLink = ZO_LinkHandler_CreateCharacterLink( gsub(memberName,"%^%a+","") )
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(memberDisplayName)
    local displayBothString = ( strformat("<<1>><<2>>", gsub(memberName,"%^%a+",""), memberDisplayName) )
    local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, memberDisplayName)

    if CA.SV.ChatPlayerDisplayOptions == 1 then
        memberLeftName = displayNameLink
    end
    if CA.SV.ChatPlayerDisplayOptions == 2 then
        memberLeftName = characterNameLink
    end
    if CA.SV.ChatPlayerDisplayOptions == 3 then
        memberLeftName = displayBoth
    end

    if memberName ~= "" and memberName ~= nil then
        if reason == GROUP_LEAVE_REASON_VOLUNTARY then
            if g_playerName == memberName then
                g_areWeGrouped = false
                SendString = (strformat(GetString(SI_LUIE_CA_GROUP_MEMBER_LEAVE_SELF), memberLeftName))
                zo_callLater(function() CA.CheckLFGStatusLeave(SendString, WasKicked) end , 100)
                g_LFGJoinAntiSpam = false -- Variable for LFG Messages
            end
            if g_playerName ~= memberName then
                SendString = (strformat(GetString(SI_LUIE_CA_GROUP_MEMBER_LEAVE), memberLeftName))
                zo_callLater(function() CA.CheckLFGStatusLeave(SendString, WasKicked) end , 100)
            end
        elseif reason == GROUP_LEAVE_REASON_KICKED then
            if g_playerName == memberName then
                g_areWeGrouped = false
                SendString = ("")
                local WasKicked = true
                zo_callLater(function() CA.CheckLFGStatusLeave(SendString, WasKicked) end , 100)
                g_LFGJoinAntiSpam = false -- Variable for LFG Messages
            end
            if g_playerName ~= memberName then
                SendString = (strformat(GetString(SI_LUIE_CA_GROUP_MEMBER_KICKED), memberLeftName))
                zo_callLater(function() CA.CheckLFGStatusLeave(SendString, WasKicked) end , 100)
            end
        elseif reason == GROUP_LEAVE_REASON_DISBAND and g_playerName == memberName then
            g_areWeGrouped = false
            SendString = (strformat(GetString(SI_LUIE_CA_GROUP_MEMBER_DISBAND_MSG), memberLeftName))
            zo_callLater(function() CA.CheckLFGStatusLeave(SendString, WasKicked) end , 100)
            g_LFGJoinAntiSpam = false -- Variable for LFG Messages
        end
    end
end

-- Gold Change Announcements
function CA.OnMoneyUpdate(eventCode, newMoney, oldMoney, reason)
    g_comboString = ""
    local UpOrDown = newMoney - oldMoney

    -- If the total gold change was 0 or Reason 35 = Player Init (Triggers when player changes zones) - End Now
    if UpOrDown == 0 or reason == 35 then
        return
    end

    local currentMoney = ZO_LocalizeDecimalNumber(GetCurrentMoney())
    local color              -- Gets the value from ChangeUpColorize or ChangeDownColorize to color strings
    local changetype         -- Amount of currency gained or lost
    local bracket1           -- Leading bracket
    local bracket2           -- Trailing bracket
    local message            -- Combined String Part 1: Context Message
    local syntax             -- Combined String Part 2: Currency Change and Icon
    local total              -- Combined String Part 3: Total String
    local plural       = "s" -- Adds an "s" onto the end of plural values of currency when not using a set string
    local formathelper = " " -- Places a spacer between the amount of currency and the name used for currency. This spacer is overwritten based on certain currency name string situations.
    local mailHelper   = false

    if CA.SV.CurrencyBracketDisplayOptions == 1 then
        bracket1 = "["
        bracket2 = "]"
    elseif CA.SV.CurrencyBracketDisplayOptions == 2 then
        bracket1 = "("
        bracket2 = ")"
    elseif CA.SV.CurrencyBracketDisplayOptions == 3 then
        bracket1 = ""
        bracket2 = " -"
    elseif CA.SV.CurrencyBracketDisplayOptions == 4 then
        bracket1 = ""
        bracket2 = ""
    end

    -- Determine the color of the text based on whether we gained or lost gold
    if UpOrDown > 0 then
        color = ChangeUpColorize
        changetype = ZO_LocalizeDecimalNumber(newMoney - oldMoney)
    else
        color = ChangeDownColorize
        changetype = ZO_LocalizeDecimalNumber(oldMoney - newMoney)
    end

    -- If we only recieve or lose 1 Gold, don't add an "s" onto the end of the name
    if UpOrDown == 1 or UpOrDown == -1 or CA.SV.CurrencyGoldName == "" or CA.SV.CurrencyGoldName == "Gold" or CA.SV.CurrencyGoldName == "Currency" or CA.SV.CurrencyGoldName == "GP" or CA.SV.CurrencyGoldName == "gp" or CA.SV.CurrencyGoldName == "G" or CA.SV.CurrencyGoldName == "g" then
        plural = ""
    end

    -- If the name is blank, don't add an additional spacer before it after the change value
    if CA.SV.CurrencyGoldName == ( "" ) or CA.SV.CurrencyGoldName == ( "g" ) or CA.SV.CurrencyGoldName == ( "gp" )then
        formathelper = ""
    end

    -- Sell/Buy from a Merchant
    if reason == 1 and UpOrDown > 0 then
        message = GetString(SI_MAIL_INBOX_RECEIVED_COLUMN)
    elseif reason == 1 and UpOrDown < 0 then
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_SPENT)

    -- Receieve Money in the Mail
    elseif reason == 2 and UpOrDown > 0 then
        message = GetString(SI_MAIL_INBOX_RECEIVED_COLUMN)

    -- Send money in the mail, values changed to compensate for COD!
    elseif reason == 2 and UpOrDown < 0 then
        if g_postageAmount == 0 and g_mailMoney == 0 and g_mailCOD == 0 then
            message = GetString(SI_LUIE_CA_MAIL_COD_PAYMENT_MSG)
        else
            message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_SENT)
        end
        changetype = ZO_LocalizeDecimalNumber(oldMoney - newMoney - g_postageAmount)
        mailHelper = true

    -- Receive/Give Money in a Trade (Likely consolidate this later)
    elseif reason == 3 then
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_TRADED)

    -- Receive from Quest Reward (4), Medal (21), AH Refund (32), Sell to Fence (63)
    elseif reason == 4 or reason == 21 or reason == 32 or reason == 63 then
        message = GetString(SI_MAIL_INBOX_RECEIVED_COLUMN)

    -- Spend - NPC Conversation (5), Bag Space (8), Bank Space (9), Wayshrine (19), Mount Feed (28), Repairs (29), AH Listing Fee (33), Respec Skills (44), Respec Attributes (45),
    -- Unstuck (48), Edit Guild Heraldry (49), Buy Guild Tabard (50), Respec Morphs (55), Pay Fence (56), Launder (60), Champion Respec (61), Buyback (64)
    elseif reason == 5 or reason == 8 or reason == 9 or reason == 19 or reason == 28 or reason == 29 or reason == 33 or reason == 44 or reason == 45 or reason == 48 or reason == 49 or reason == 50 or reason == 55 or reason == 56 or reason == 60 or reason == 61 or reason == 64 then
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_SPENT)

    -- Buy on AH (31)
    elseif reason == 31 then
        if CA.SV.CurrencyGoldHideAH then return end
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_SPENT)

    -- Desposit in Bank (42) or Guild Bank (51)
    elseif reason == 42 or reason == 51 then
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DEPOSITED)

    -- Withdraw from Bank (43) or Guild Bank (52)
    elseif reason == 43 or reason == 52 then
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_WITHDREW)

    -- Confiscated -- Pay to Guard (47) or Killed by Guard (57)
    elseif reason == 47 or reason == 57 then
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_CONFISCATED)

    -- Pickpocketed (59)
    elseif reason == 59 then
        message = GetString(SI_GAMECAMERAACTIONTYPE21)

    -- Looted - From Chest (0), Looted (13), Stolen Gold (62)
    elseif reason == 0 or reason == 13 or reason == 62 then
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_LOOTED)

    -- ==============================================================================
    -- DEBUG EVENTS WE DON'T KNOW YET
    elseif reason == 6 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 7 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 12 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 14 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 15 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 16 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 18 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 20 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 22 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 23 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 24 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 25 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 26 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 27 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 30 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 34 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 36 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 37 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 38 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 39 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 40 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 41 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 46 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 53 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 54 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 58 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 66 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    -- END DEBUG EVENTS
    -- ==============================================================================

    -- If none of these returned true, then we must have just looted the gold (Potentially a few currency change events I missed too may have to adjust later)
    else message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_LOOTED) end

    if CA.SV.CurrencyContextToggle then -- Override with custom string if enabled
        if color == ChangeUpColorize then
            message = CA.SV.CurrencyContextMessageUp
        else
            message = CA.SV.CurrencyContextMessageDown
        end
    end

    -- Creates initial message
    message = color:Colorize(strfmt("%s%s%s", bracket1, message, bracket2))

    -- Determines syntax based on whether icon is displayed or not, we use "ICON - GOLD CHANGE AMOUNT" if so, and "GOLD CHANGE AMOUNT - GOLD" if not
    if CA.SV.CurrencyIcons then
        syntax = CurrencyGoldColorize:Colorize(strfmt(" |t16:16:/esoui/art/currency/currency_gold.dds|t %s%s%s%s", changetype, formathelper, CA.SV.CurrencyGoldName, plural))
    else
        syntax = CurrencyGoldColorize:Colorize(strfmt(" %s%s%s%s", changetype, formathelper, CA.SV.CurrencyGoldName, plural))
    end

    -- If Total Currency display is on, then this line is printed additionally on the end, if not then print a blank string
    if not mailHelper then
        if CA.SV.CurrencyGoldShowTotal and not CA.SV.CurrencyIcons then
            total = CA.SV.CurrencyGoldShowTotal and strfmt(" %s %s", color:Colorize(CA.SV.CurrencyTotalMessage), CurrencyGoldColorize:Colorize(currentMoney))
        elseif CA.SV.CurrencyGoldShowTotal and CA.SV.CurrencyIcons then
            total = CA.SV.CurrencyGoldShowTotal and strfmt(" %s |t16:16:/esoui/art/currency/currency_gold.dds|t %s", color:Colorize(CA.SV.CurrencyTotalMessage), CurrencyGoldColorize:Colorize(currentMoney))
        else
            total = ""
        end
        -- Print a message to chat based off all the values we filled in above
        if CA.SV.CurrencyGoldChange and CA.SV.LootCurrencyCombo and UpOrDown < 0 and (reason == 1 or reason == 63 or reason == 64) then
            g_comboString = ( strfmt(" → %s%s%s", message, syntax, total) )
        elseif CA.SV.MiscMail and reason == 2 then
            if not g_mailStop and g_mailStringPart1 ~= "" then
                if not CA.SV.CurrencyGoldChange then
                    printToChat(strformat("<<1>><<2>><<3>> <<c:4>>.", g_mailStringPart1, GetString(SI_LIST_AND_SEPARATOR), changetype, GetString(SI_CURRENCY_GOLD)))
                else
                    printToChat(strformat("<<1>><<2>><<c:3>>.", g_mailStringPart1, GetString(SI_LIST_AND_SEPARATOR), GetString(SI_CURRENCY_GOLD)))
                end
            elseif not g_mailStop then
                if not CA.SV.CurrencyGoldChange then
                    printToChat(strformat(GetString(SI_LUIE_CA_MAIL_RECEIVED_VAR_GOLD_MSG), changetype))
                else
                    printToChat(GetString(SI_LUIE_CA_MAIL_RECEIVED_GOLD_MSG))
                end
            end
            if CA.SV.CurrencyGoldChange then
                printToChat(strfmt("%s%s%s", message, syntax, total))
            end
            g_mailStringPart1 = ""
        elseif CA.SV.CurrencyGoldChange and reason == 3 and CA.SV.MiscTrade and UpOrDown < 0 then
            g_tradeString1 = ( strfmt("%s%s%s", message, syntax, total) )
        elseif CA.SV.CurrencyGoldChange and reason == 3 and CA.SV.MiscTrade and UpOrDown > 0 then
            g_tradeString2 = ( strfmt("%s%s%s", message, syntax, total) )
        elseif CA.SV.CurrencyGoldChange and CA.SV.LootCurrencyCombo and reason == 28 then
            g_comboString = ( strfmt(" → %s%s%s", message, syntax, total) )
        elseif CA.SV.CurrencyGoldChange and reason == 4 then
            local function DisplayQuestRewardGold()
                printToChat(strfmt("%s%s%s", message, syntax, total))
            end
            zo_callLater(DisplayQuestRewardGold, 50)
        elseif CA.SV.CurrencyGoldChange and reason == 47 then
            g_stealString = ( strfmt("%s%s%s", message, syntax, total) )
            local latency = GetLatency()
            latency = latency + 50
            zo_callLater(CA.JusticeStealRemove, latency)
         elseif CA.SV.CurrencyGoldChange and reason == 57 then
            g_stealString = ( strfmt("%s%s%s", message, syntax, total) )
            local latency = GetLatency()
            latency = latency + 50
            zo_callLater(CA.JusticeStealRemove, latency)
        elseif CA.SV.CurrencyGoldChange and CA.SV.LootCurrencyCombo and UpOrDown > 0 and (reason == 1 or reason == 63 or reason == 64) then
            g_comboString = ( strfmt(" ← %s%s%s", message, syntax, total) )
        elseif CA.SV.CurrencyGoldChange and CA.SV.LootCurrencyCombo and CA.SV.MiscBags and (reason == 8 or reason == 9) then
            g_comboString = ( strfmt(" → %s%s%s", message, syntax, total) )
        elseif CA.SV.CurrencyGoldChange and UpOrDown < 0 and reason == 60 then
            g_launderGoldstring = ( strfmt("%s%s%s", message, syntax, total) )
        elseif CA.SV.CurrencyGoldChange and reason == 99 then -- reason 99 is a fake code we send from the throttle printer function
            printToChat(strfmt("%s%s%s", message, syntax, total))
            return
        -- Don't show LOOTED gold below this threshold
        elseif CA.SV.CurrencyGoldChange and (reason == 0 or reason == 13 or reason == 62) and CA.SV.CurrencyGoldFilter > 0 and not CA.SV.CurrencyGoldThrottle then
            if UpOrDown > CA.SV.CurrencyGoldFilter then
                printToChat(strfmt("%s%s%s", message, syntax, total))
            end
        elseif CA.SV.CurrencyGoldChange and (reason == 0 or reason == 13 or reason == 62) and CA.SV.CurrencyGoldThrottle then
            zo_callLater(CA.CurrencyGoldThrottlePrinter, 50 )
            g_CurrencyGoldThrottle = g_CurrencyGoldThrottle + UpOrDown
        else
            if CA.SV.CurrencyGoldChange then
                printToChat(strfmt("%s%s%s", message, syntax, total))
            end
        end
    else
        g_mailCurrencyCheck = false
        local valuesent = ""
        local totalwithoutpostage = 0
        if g_postageAmount ~= 0 then
            totalWithoutPostage = ZO_LocalizeDecimalNumber ( oldMoney - g_postageAmount )
        else
            totalWithoutPostage = ZO_LocalizeDecimalNumber ( oldMoney )
        end

        if CA.SV.CurrencyGoldShowTotal and not CA.SV.CurrencyIcons then
            total = CA.SV.CurrencyGoldShowTotal and strfmt(" %s %s", color:Colorize(CA.SV.CurrencyTotalMessage), CurrencyGoldColorize:Colorize(currentMoney))
        elseif CA.SV.CurrencyGoldShowTotal and CA.SV.CurrencyIcons then
            total = CA.SV.CurrencyGoldShowTotal and strfmt(" %s |t16:16:/esoui/art/currency/currency_gold.dds|t %s", color:Colorize(CA.SV.CurrencyTotalMessage), CurrencyGoldColorize:Colorize(currentMoney))
        else
            total = ""
        end

        local itemCounter = 0
        local mailAttachmentsStringPlural = "s"
        local mailAttachmentsString = ""
        for i = 1, #g_mailStacksOut do
            itemCounter = itemCounter + 1
        end

        if itemCounter == 1 then mailAttachmentsStringPlural = "" end

        if itemCounter > 0 then
            mailAttachmentsString = (strformat(GetString(SI_LUIE_CA_MAIL_SENT_ATTACHMENT), itemCounter, mailAttachmentsStringPlural))
        elseif itemCounter == 0 then
            mailAttachmentsString = ("")
        end

        -- COD Payment sent with Gold Change off
        if CA.SV.MiscMail and g_postageAmount == 0 and g_mailMoney == 0 and g_mailCOD == 0 and not CA.SV.CurrencyGoldChange then
            printToChat(strformat(GetString(SI_LUIE_CA_MAIL_COD_PAYMENT_SENT_VAR), changetype))
        end
        -- COD Payment sent with Gold Change on
        if CA.SV.MiscMail and g_postageAmount == 0 and g_mailMoney == 0 and g_mailCOD == 0 and CA.SV.CurrencyGoldChange then
            printToChat(GetString(SI_LUIE_CA_MAIL_COD_PAYMENT_SENT))
        end
        -- COD Sent with Gold Change Off
        if CA.SV.MiscMail and g_mailCOD ~= 0 and not CA.SV.CurrencyGoldChange then
            printToChat(strformat(GetString(SI_LUIE_CA_MAIL_COD_SENT_VAR), g_mailCOD, itemCounter, mailAttachmentsStringPlural) )
        end
        -- COD Sent with Gold Change On
        if CA.SV.MiscMail and g_mailCOD ~= 0 and CA.SV.CurrencyGoldChange then
            printToChat(strformat(GetString(SI_LUIE_CA_MAIL_COD_SENT), itemCounter) )
        end

        -- Mail with no gold or COD sent
        if CA.SV.MiscMail and g_mailCOD == 0 and g_mailMoney == 0 and g_postageAmount >= 1 then
            if mailAttachmentsString ~= ("") then
                printToChat(strformat("<<1>>!", mailAttachmentsString))
            else
                printToChat(GetString(SI_LUIE_CA_MAIL_SENT_SUCCESS))
            end
        end
        -- Mail with gold sent and Gold Change off
        if CA.SV.MiscMail and g_mailMoney ~= 0 and not CA.SV.CurrencyGoldChange then
            if mailAttachmentsString ~= ("") then
                printToChat(strformat("<<1>><<2>><<3>> <<c:4>>!", mailAttachmentsString, GetString(SI_LIST_AND_SEPARATOR), changetype, GetString(SI_CURRENCY_GOLD)))
            else
                printToChat(strformat(GetString(SI_LUIE_CA_MAIL_SENT_VAR_GOLD_MSG), g_mailMoney) )
            end
        end
        -- Mail with gold sent and Gold Change On
        if CA.SV.MiscMail and g_mailMoney ~= 0 and CA.SV.CurrencyGoldChange then
            if mailAttachmentsString ~= ("") then
                printToChat(strformat("<<1>><<2>><<c:3>>!", mailAttachmentsString, GetString(SI_LIST_AND_SEPARATOR), GetString(SI_CURRENCY_GOLD)))
            else
                printToChat(GetString(SI_LUIE_CA_MAIL_SENT_GOLD_MSG))
            end
        end

        valuesent = ( strfmt("%s%s%s", message, syntax, total) )

        if g_postageAmount ~= 0 then
            local postagesyntax = CA.SV.CurrencyIcons and CurrencyGoldColorize:Colorize(strfmt( " |t16:16:/esoui/art/currency/currency_gold.dds|t " .. g_postageAmount .. formathelper .. CA.SV.CurrencyGoldName .. plural)) or CurrencyGoldColorize:Colorize(strfmt( " " .. g_postageAmount .. formathelper .. CA.SV.CurrencyGoldName .. plural))

            if CA.SV.CurrencyGoldShowTotal and not CA.SV.CurrencyIcons then
                total = CA.SV.CurrencyGoldShowTotal and strfmt(" %s %s", color:Colorize(CA.SV.CurrencyTotalMessage), CurrencyGoldColorize:Colorize(totalWithoutPostage))
            elseif CA.SV.CurrencyGoldShowTotal and CA.SV.CurrencyIcons then
                total = CA.SV.CurrencyGoldShowTotal and strfmt(" %s |t16:16:/esoui/art/currency/currency_gold.dds|t %s", color:Colorize(CA.SV.CurrencyTotalMessage), CurrencyGoldColorize:Colorize(totalWithoutPostage))
            else
                total = ""
            end
            if CA.SV.CurrencyContextToggle then -- Override with custom string if enabled
                message = color:Colorize(strfmt("%s%s%s", bracket1, CA.SV.CurrencyContextMessageDown, bracket2))
            else
                message = color:Colorize(strfmt("%s%s%s", bracket1, GetString(SI_GAMEPAD_MAIL_SEND_POSTAGE_LABEL), bracket2)) -- "Postage"
            end
            if CA.SV.CurrencyGoldChange then
                printToChat(strfmt("%s%s%s", message, postagesyntax, total))
            end
        end

        if CA.SV.CurrencyGoldChange and g_mailMoney ~= 0 then
            printToChat(valuesent)
        end
        if CA.SV.CurrencyGoldChange and g_postageAmount == 0 and g_mailMoney == 0 and g_mailCOD == 0 then
            printToChat(valuesent) -- All these values will be zero for a COD payment sent, since none of them are updated.
        end
    end

    mailHelper = false
    g_postageAmount = 0
    g_mailMoney = 0
    g_mailCOD = 0
    if not g_mailCurrencyCheck then
        zo_callLater(CA.MailClearVariables, 2000)
    end
end

function CA.CurrencyGoldThrottlePrinter()
    if g_CurrencyGoldThrottle > 1 then
        local newMoney = GetCurrentMoney()
        local oldMoney = newMoney - g_CurrencyGoldThrottle
        if g_CurrencyGoldThrottle > CA.SV.CurrencyGoldFilter then
            CA.OnMoneyUpdate(eventCode, newMoney, oldMoney, 99)
        end
        g_CurrencyGoldThrottle = 0
    end
end

-- Alliance Point Change Announcements
function CA.OnAlliancePointUpdate(eventCode, alliancePoints, playSound, difference, throttlechecker)
    g_comboString = ""
    local UpOrDown     = alliancePoints + difference

    -- If the total AP change was 0 then we end this now
    if UpOrDown == alliancePoints then
        return
    end

    local currentAlliancePoints = ZO_LocalizeDecimalNumber(alliancePoints)
    local color              -- Gets the value from ChangeUpColorize or ChangeDownColorize to color strings
    local changetype         -- Amount of currency gained or lost
    local bracket1           -- Leading bracket
    local bracket2           -- Trailing bracket
    local message            -- Combined String Part 1: Context Message
    local syntax             -- Combined String Part 2: Currency Change and Icon
    local total              -- Combined String Part 3: Total String
    local plural       = "s" -- Adds an "s" onto the end of plural values of currency when not using a set string
    local formathelper = " " -- Places a spacer between the amount of currency and the name used for currency. This spacer is overwritten based on certain currency name string situations.

    if CA.SV.CurrencyBracketDisplayOptions == 1 then
        bracket1 = "["
        bracket2 = "]"
    elseif CA.SV.CurrencyBracketDisplayOptions == 2 then
        bracket1 = "("
        bracket2 = ")"
    elseif CA.SV.CurrencyBracketDisplayOptions == 3 then
        bracket1 = ""
        bracket2 = " -"
    elseif CA.SV.CurrencyBracketDisplayOptions == 4 then
        bracket1 = ""
        bracket2 = ""
    end

    -- Determine the color and message of the text based on whether we gained or lost Alliance Points
    if UpOrDown > alliancePoints then
        color = ChangeUpColorize
        changetype = ZO_LocalizeDecimalNumber( difference )
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_EARNED)
    else
        color = ChangeDownColorize
        difference = difference * -1
        changetype = ZO_LocalizeDecimalNumber( difference )
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_SPENT)
    end

    -- If we only recieve or lose 1 Alliance Point, don't add an "s" onto the end of the name
    if UpOrDown == 1 or UpOrDown == -1 or CA.SV.CurrencyAPName == "" or CA.SV.CurrencyAPName == "AP" or CA.SV.CurrencyAPName == "ap" or CA.SV.CurrencyAPName == "A" or CA.SV.CurrencyAPName == "a" then
        plural = ""
    end

    -- If the name is blank, don't add an additional spacer before it after the change value
    if CA.SV.CurrencyAPName == ( "" ) or CA.SV.CurrencyAPName == ( "ap" ) or CA.SV.CurrencyAPName == ( "a" ) then
        formathelper = ""
    end

    if CA.SV.CurrencyContextToggle then -- Override with custom string if enabled
        if color == ChangeUpColorize then
            message = CA.SV.CurrencyContextMessageUp
        else
            message = CA.SV.CurrencyContextMessageDown
        end
    end

    -- Creates initial message
    message = color:Colorize(strfmt("%s%s%s", bracket1, message, bracket2))

    -- Determines syntax based on whether icon is displayed or not
    if CA.SV.CurrencyIcons then
        syntax = APColorize:Colorize(strfmt(" |t16:16:/esoui/art/currency/alliancepoints.dds|t %s%s%s%s", changetype, formathelper, CA.SV.CurrencyAPName, plural))
    else
        syntax = APColorize:Colorize(strfmt(" %s%s%s%s", changetype, formathelper, CA.SV.CurrencyAPName, plural))
    end

    -- If Total Currency display is on, then this line is printed additionally on the end, if not then print a blank string
    if CA.SV.CurrencyAPShowTotal and not CA.SV.CurrencyIcons then
        total = strfmt(" %s %s", color:Colorize(CA.SV.CurrencyTotalMessage), APColorize:Colorize(currentAlliancePoints))
    elseif CA.SV.CurrencyAPShowTotal and CA.SV.CurrencyIcons then
        total = strfmt(" %s |t16:16:/esoui/art/currency/alliancepoints.dds|t %s", color:Colorize(CA.SV.CurrencyTotalMessage), APColorize:Colorize(currentAlliancePoints))
    else
        total = ""
    end

    -- Print a message to chat based off all the values we filled in above
    if CA.SV.LootCurrencyCombo and color == ChangeDownColorize then
        g_comboString = (strfmt(" → %s%s%s", message, syntax, total))
    elseif difference > 0 then
        if throttlechecker == true then
            printToChat(strfmt("%s%s%s", message, syntax, total))
            return
        elseif CA.SV.CurrencyAPFilter > 0 and CA.SV.CurrencyAPThrottle == 0 then
            if difference > CA.SV.CurrencyAPFilter then
                printToChat(strfmt("%s%s%s", message, syntax, total))
            end
        elseif CA.SV.CurrencyAPThrottle > 0 then
            zo_callLater(CA.CurrencyAPThrottlePrinter, CA.SV.CurrencyAPThrottle )
            g_CurrencyAPThrottle = g_CurrencyAPThrottle + difference
        else
            printToChat(strfmt("%s%s%s", message, syntax, total))
        end
    -- Always print AP spent
    elseif difference < 0 then
        printToChat(strfmt("%s%s%s", message, syntax, total))
    end
end

function CA.CurrencyAPThrottlePrinter()
    local alliancepoints = GetAlliancePoints()
    if g_CurrencyAPThrottle > 1 then
        CA.OnAlliancePointUpdate(eventCode, alliancepoints, false, g_CurrencyAPThrottle, true)
        g_CurrencyAPThrottle = 0
    end
end

-- Tel Var Stones Change Announcements
function CA.OnTelVarStoneUpdate(eventCode, newTelvarStones, oldTelvarStones, reason)
    g_comboString = ""
    local UpOrDown = newTelvarStones - oldTelvarStones

    -- If the total Tel Var change was 0 or Reason 35 = Player Init (Triggers when player changes zones) - End Now
    if UpOrDown == 0 or reason == 35 then
        return
    end

    local currentTelvar = ZO_LocalizeDecimalNumber(newTelvarStones)
    local color              -- Gets the value from ChangeUpColorize or ChangeDownColorize to color strings
    local changetype         -- Amount of currency gained or lost
    local bracket1           -- Leading bracket
    local bracket2           -- Trailing bracket
    local message            -- Combined String Part 1: Context Message
    local syntax             -- Combined String Part 2: Currency Change and Icon
    local total              -- Combined String Part 3: Total String
    local plural       = "s" -- Adds an "s" onto the end of plural values of currency when not using a set string
    local formathelper = " " -- Places a spacer between the amount of currency and the name used for currency. This spacer is overwritten based on certain currency name string situations.

    if CA.SV.CurrencyBracketDisplayOptions == 1 then
        bracket1 = "["
        bracket2 = "]"
    elseif CA.SV.CurrencyBracketDisplayOptions == 2 then
        bracket1 = "("
        bracket2 = ")"
    elseif CA.SV.CurrencyBracketDisplayOptions == 3 then
        bracket1 = ""
        bracket2 = " -"
    elseif CA.SV.CurrencyBracketDisplayOptions == 4 then
        bracket1 = ""
        bracket2 = ""
    end

    -- Determine the color of the text based on whether we gained or lost gold
    if UpOrDown > 0 then
        color = ChangeUpColorize
        if reason == 99 then
            changetype = ZO_LocalizeDecimalNumber(oldTelvarStones)
        else
            changetype = ZO_LocalizeDecimalNumber(newTelvarStones - oldTelvarStones)
        end
    else
        color = ChangeDownColorize
        changetype = ZO_LocalizeDecimalNumber(oldTelvarStones - newTelvarStones)
    end

    -- If we only recieve or lose 1 Tel Var Stone, don't add an "s" onto the end of the name
    if UpOrDown == 1 or UpOrDown == -1 or CA.SV.CurrencyTVName == "" or CA.SV.CurrencyTVName == "TV" or CA.SV.CurrencyTVName == "tv" or CA.SV.CurrencyTVName == "TVS" or CA.SV.CurrencyTVName == "tvs" or CA.SV.CurrencyTVName == "T" or CA.SV.CurrencyTVName == "t" or CA.SV.CurrencyTVName == "TelVar" or CA.SV.CurrencyTVName == "Tel Var" then
        plural = ""
    end

    -- If the name is blank, don't add an additional spacer before it after the change value
    if CA.SV.CurrencyTVName == ( "" ) or CA.SV.CurrencyTVName == ( "tv" ) or CA.SV.CurrencyTVName == ( "t" ) or CA.SV.CurrencyTVName == ( "tvs" ) then
        formathelper = ""
    end

    -- Buy from a Merchant (no way to sell Tel Var)
    if reason == 1 and UpOrDown < 0 then
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_SPENT)

    -- Desposit in Bank (42)
    elseif reason == 42 then
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DEPOSITED)

    -- Withdraw from Bank (43)
    elseif reason == 43 then
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_WITHDREW)

    -- Looted - From Chest (0) or from Player/NPC (65)
    elseif reason == 0 or reason == 65 then
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_LOOTED)

    -- Died to Player/NPC (67)
    elseif reason == 67 then
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_LOST)

    -- ==============================================================================
    -- DEBUG EVENTS WE DON'T KNOW YET
    elseif reason == 6 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 7 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 12 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 14 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 15 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 16 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 18 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 20 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 21 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 22 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 23 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 24 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 25 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 26 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 27 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 30 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 34 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 36 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 37 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 38 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 39 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 40 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 41 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 46 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 53 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 54 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 58 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 66 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    -- END DEBUG EVENTS
    -- ==============================================================================

    -- If none of these returned true, then we must have just looted the Tel Var Stones
    else message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_LOOTED) end

    if CA.SV.CurrencyContextToggle then -- Override with custom string if enabled
        if color == ChangeUpColorize then
            message = CA.SV.CurrencyContextMessageUp
        else
            message = CA.SV.CurrencyContextMessageDown
        end
    end

    -- Creates initial message
    message = color:Colorize(strfmt("%s%s%s", bracket1, message, bracket2))

    -- Determines syntax based on whether icon is displayed or not
    if CA.SV.CurrencyIcons then
        syntax = TVColorize:Colorize(strfmt(" |t16:16:/esoui/art/currency/currency_telvar.dds|t %s%s%s%s", changetype, formathelper, CA.SV.CurrencyTVName, plural))
    else
        syntax = TVColorize:Colorize(strfmt(" %s%s%s%s", changetype, formathelper, CA.SV.CurrencyTVName, plural))
    end

    -- If Total Currency display is on, then this line is printed additionally on the end, if not then print a blank string
    if CA.SV.CurrencyTVShowTotal and not CA.SV.CurrencyIcons then
        total = strfmt(" %s %s", color:Colorize(CA.SV.CurrencyTotalMessage), TVColorize:Colorize(currentTelvar))
    elseif CA.SV.CurrencyTVShowTotal and CA.SV.CurrencyIcons then
        total = strfmt(" %s |t16:16:/esoui/art/currency/currency_telvar.dds|t %s", color:Colorize(CA.SV.CurrencyTotalMessage), TVColorize:Colorize(currentTelvar))
    else
        total = ""
    end

    -- Print a message to chat based off all the values we filled in above
    if CA.SV.LootCurrencyCombo and UpOrDown < 0 and reason == 1 then
        g_comboString = (strfmt(" → %s%s%s", message, syntax, total))
    elseif CA.SV.LootCurrencyCombo and UpOrDown > 0 and reason == 1 then
        g_comboString = (strfmt(" ← %s%s%s", message, syntax, total))
    elseif reason == 99 then
        printToChat(strfmt("%s%s%s", message, syntax, total))
        return
    elseif (reason == 0 or reason == 65) and CA.SV.CurrencyTVFilter > 0 and CA.SV.CurrencyTVThrottle == 0 then
        if UpOrDown > CA.SV.CurrencyTVFilter then
            printToChat(strfmt("%s%s%s", message, syntax, total))
        end
    elseif (reason == 0 or reason == 65) and CA.SV.CurrencyTVThrottle > 0 then
        zo_callLater(CA.CurrencyTVThrottlePrinter, CA.SV.CurrencyTVThrottle )
        g_CurrencyTVThrottle = g_CurrencyTVThrottle + UpOrDown
        g_telVarStoneMaxSave = newTelvarStones
    else
        printToChat(strfmt("%s%s%s", message, syntax, total))
    end
end

function CA.CurrencyTVThrottlePrinter()
    if g_CurrencyTVThrottle > 1 then
        if g_CurrencyTVThrottle > CA.SV.CurrencyTVFilter then
            CA.OnTelVarStoneUpdate(eventCode, g_telVarStoneMaxSave, g_CurrencyTVThrottle, 99)
        end
        g_CurrencyTVThrottle = 0
        g_telVarStoneMaxSave = 0
    end
end

-- Writ Voucher Change Announcements
function CA.OnWritVoucherUpdate(eventCode, newWritVouchers, oldWritVouchers, reason)
    -- If the total Writ Voucher change was 0 or Reason 35 = Player Init (Triggers when player changes zones) - End Now
    if UpOrDown == 0 or reason == 35 then
        return
    end

    g_comboString = ""
    local UpOrDown            = newWritVouchers - oldWritVouchers

    local currentWritVouchers = ZO_LocalizeDecimalNumber(newWritVouchers)
    local color              -- Gets the value from ChangeUpColorize or ChangeDownColorize to color strings
    local changetype         -- Amount of currency gained or lost
    local bracket1           -- Leading bracket
    local bracket2           -- Trailing bracket
    local message            -- Combined String Part 1: Context Message
    local syntax             -- Combined String Part 2: Currency Change and Icon
    local total              -- Combined String Part 3: Total String
    local plural       = "s" -- Adds an "s" onto the end of plural values of currency when not using a set string
    local formathelper = " " -- Places a spacer between the amount of currency and the name used for currency. This spacer is overwritten based on certain currency name string situations.

    if CA.SV.CurrencyBracketDisplayOptions == 1 then
        bracket1 = "["
        bracket2 = "]"
    elseif CA.SV.CurrencyBracketDisplayOptions == 2 then
        bracket1 = "("
        bracket2 = ")"
    elseif CA.SV.CurrencyBracketDisplayOptions == 3 then
        bracket1 = ""
        bracket2 = " -"
    elseif CA.SV.CurrencyBracketDisplayOptions == 4 then
        bracket1 = ""
        bracket2 = ""
    end

    -- Determine the color of the text based on whether we gained or lost gold
    if UpOrDown > 0 then
        color = ChangeUpColorize
        changetype = ZO_LocalizeDecimalNumber(newWritVouchers - oldWritVouchers)
        message = GetString(SI_MAIL_INBOX_RECEIVED_COLUMN)
    else
        color = ChangeDownColorize
        changetype = ZO_LocalizeDecimalNumber(oldWritVouchers - newWritVouchers)
        message = GetString(SI_LUIE_CA_PREFIX_MESSAGE_SPENT)
    end

    -- If we only recieve or lose 1 Writ Voucher, don't add an "s" onto the end of the name
    if UpOrDown == 1 or UpOrDown == -1 or CA.SV.CurrencyWVName == "" or CA.SV.CurrencyWVName == "WV" or CA.SV.CurrencyWVName == "wv" or CA.SV.CurrencyWVName == "W" or CA.SV.CurrencyWVName == "w" or CA.SV.CurrencyWVName == "V" or CA.SV.CurrencyWVName == "v" then
        plural = ""
    end

    -- If the name is blank, don't add an additional spacer before it after the change value
    if CA.SV.CurrencyWVName == ( "" ) or CA.SV.CurrencyWVName == ( "wv" ) or CA.SV.CurrencyWVName == ( "w" ) or CA.SV.CurrencyWVName == ( "v" ) then
        formathelper = ""
    end

    -- ==============================================================================
    -- DEBUG EVENTS WE DON'T KNOW YET
    if reason == 6 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 7 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 12 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 14 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 15 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 16 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 18 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 20 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 21 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 22 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 23 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 24 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 25 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 26 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 27 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 30 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 34 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 36 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 37 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 38 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 39 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 40 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 41 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 46 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 53 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 54 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 58 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    elseif reason == 66 then message = strformat(GetString(SI_LUIE_CA_DEBUG_MSG_CURRENCY), reason)
    end
    -- END DEBUG EVENTS
    -- ==============================================================================

    if CA.SV.CurrencyContextToggle then -- Override with custom string if enabled
        if color == ChangeUpColorize then
            message = CA.SV.CurrencyContextMessageUp
        else
            message = CA.SV.CurrencyContextMessageDown
        end
    end

    -- Creates initial message
    message = color:Colorize(strfmt("%s%s%s", bracket1, message, bracket2))

    -- Determines syntax based on whether icon is displayed or not
    if CA.SV.CurrencyIcons then
        syntax = WVColorize:Colorize(strfmt(" |t16:16:/esoui/art/currency/currency_writvoucher.dds|t %s%s%s%s", changetype, formathelper, CA.SV.CurrencyWVName, plural))
    else
        syntax = WVColorize:Colorize(strfmt(" %s%s%s%s", changetype, formathelper, CA.SV.CurrencyWVName, plural))
    end

    -- If Total Currency display is on, then this line is printed additionally on the end, if not then print a blank string
    if CA.SV.CurrencyWVShowTotal and not CA.SV.CurrencyIcons then
        total = strfmt(" %s %s", color:Colorize(CA.SV.CurrencyTotalMessage), WVColorize:Colorize(currentWritVouchers))
    elseif CA.SV.CurrencyWVShowTotal and CA.SV.CurrencyIcons then
        total = strfmt(" %s |t16:16:/esoui/art/currency/currency_writvoucher.dds|t %s", color:Colorize(CA.SV.CurrencyTotalMessage), WVColorize:Colorize(currentWritVouchers))
    else
        total = ""
    end

    -- Print a message to chat based off all the values we filled in above
    if CA.SV.LootCurrencyCombo and UpOrDown < 0 then
        g_comboString = (strfmt(" → %s%s%s", message, syntax, total))
    else
        printToChat(strfmt("%s%s%s", message, syntax, total))
    end
end

local function ResetLockpickBroken()
    g_lockpickBroken = false
end

function CA.MiscAlertLockBroke(eventCode, inactivityLengthMs)
    if CA.SV.ShowLockpickBreak then
        g_lockpickBroken = true
        zo_callLater(ResetLockpickBroken, 200)
    end
end

function CA.MiscAlertLockFailed(eventCode)
    if CA.SV.MiscLockpick then
        printToChat(GetString(SI_LUIE_CA_LOCKPICK_FAILED))
    end
    if CA.SV.ShowLockpickBreak then
        g_lockpickBroken = true
        zo_callLater(ResetLockpickBroken, 200)
    end
end

function CA.MiscAlertLockSuccess(eventCode)
    if CA.SV.MiscLockpick then
        printToChat(GetString(SI_LUIE_CA_LOCKPICK_SUCCESS))
    end
    if CA.SV.ShowLockpickBreak then
        g_lockpickBroken = true
        zo_callLater(ResetLockpickBroken, 200)
    end
end

function CA.MiscAlertLockImpossible(eventCode, interactableName)
    printToChat(strformat(GetString(SI_LOCKPICK_IMPOSSIBLE_LOCK), interactableName))
end

function CA.MiscAlertLockLocked(eventCode, interactableName)
    printToChat(strformat(GetString(SI_LOCKPICK_NO_KEY_AND_NO_LOCK_PICKS), interactableName))
end

function CA.MiscAlertHorse(eventCode, ridingSkillType, previous, current, source)
    if CA.SV.MiscHorse then
        local bracket1
        local bracket2
        local icon
        local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_PURCHASED)
        local skillstring

        if source == 2 then
            logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_LEARNED)
        end

        if CA.SV.ItemBracketDisplayOptions == 1 then
            bracket1 = "["
            bracket2 = "]"
        elseif CA.SV.ItemBracketDisplayOptions == 2 then
            bracket1 = "("
            bracket2 = ")"
        elseif CA.SV.ItemBracketDisplayOptions == 3 then
            bracket1 = ""
            bracket2 = " -"
        elseif CA.SV.ItemBracketDisplayOptions == 4 then
            bracket1 = ""
            bracket2 = ""
        end

        if ridingSkillType == 1 and source == 1 then
            skillstring = "[Riding Speed Upgrade]"
        elseif ridingSkillType == 2 and source == 1  then
            skillstring = "[Riding Capacity Upgrade]"
        elseif ridingSkillType == 3 and source == 1  then
            skillstring = "[Riding Stamina Upgrade]"
        elseif ridingSkillType == 1 and source == 2  then
            skillstring = "|H1:item:64700:1:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
        elseif ridingSkillType == 2 and source == 2  then
            skillstring = "|H1:item:64702:1:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
        elseif ridingSkillType == 3 and source == 2  then
            skillstring = "|H1:item:64701:1:1:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0:0|h|h"
        end

        if CA.SV.LootIcons then
            if source == 1 then
                if ridingSkillType == 1 then
                    icon = "|t16:16:/esoui/art/mounts/ridingskill_speed.dds|t "
                elseif ridingSkillType == 2 then
                    icon = "|t16:16:/esoui/art/mounts/ridingskill_capacity.dds|t "
                elseif ridingSkillType == 3 then
                    icon = "|t16:16:/esoui/art/mounts/ridingskill_stamina.dds|t "
                end
            elseif source == 2 then
                if ridingSkillType == 1 then
                    icon = "|t16:16:/esoui/art/icons/store_ridinglessons_speed.dds|t "
                elseif ridingSkillType == 2 then
                    icon = "|t16:16:/esoui/art/icons/store_ridinglessons_capacity.dds|t "
                elseif ridingSkillType == 3 then
                    icon = "|t16:16:/esoui/art/icons/store_ridinglessons_stamina.dds|t "
                end
            end
        else
            icon = ""
        end

        if CA.SV.ItemContextToggle then
            logPrefix = CA.SV.ItemContextMessage
        end

        logPrefix = ChangeUpColorize:Colorize(strfmt("%s%s%s", bracket1, logPrefix, bracket2))

        if CA.SV.LootCurrencyCombo == true then
            printToChat(strfmt("%s %s%s |cFFFFFF%s/60|r%s", logPrefix, icon, skillstring, current, g_comboString))
            g_comboString = ""
        else
            printToChat(strfmt("%s %s%s |cFFFFFF%s/60|r", logPrefix, icon, skillstring, current) )
        end
    end
end

function CA.MiscAlertBags(eventCode, previousCapacity, currentCapacity, previousUpgrade, currentUpgrade)
    if CA.SV.MiscBags then
        local bracket1
        local bracket2
        local icon
        local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_PURCHASED)

        -- If this isn't a bag upgrade purchase then ignore this event. We have a separate event handling mount space upgrades.
        if currentUpgrade < 1 then
            return
        end
        
        if currentUpgrade <= previousUpgrade then
            return
        end

        if CA.SV.ItemBracketDisplayOptions == 1 then
            bracket1 = "["
            bracket2 = "]"
        elseif CA.SV.ItemBracketDisplayOptions == 2 then
            bracket1 = "("
            bracket2 = ")"
        elseif CA.SV.ItemBracketDisplayOptions == 3 then
            bracket1 = ""
            bracket2 = " -"
        elseif CA.SV.ItemBracketDisplayOptions == 4 then
            bracket1 = ""
            bracket2 = ""
        end

        if CA.SV.LootIcons then
            icon = "|t16:16:/esoui/art/icons/store_upgrade_bag.dds|t "
        else
            icon = ""
        end

        if CA.SV.ItemContextToggle then
            logPrefix = ( CA.SV.ItemContextMessage )
        end

        logPrefix = ChangeUpColorize:Colorize(strfmt("%s%s%s", bracket1, logPrefix, bracket2))

        if CA.SV.LootCurrencyCombo == true then
            printToChat(strfmt("%s %s[Bag Space Upgrade] |cFFFFFF%s/8|r%s", logPrefix, icon, currentUpgrade, g_comboString))
            g_comboString = ""
        else
            printToChat(strfmt("%s %s[Bag Space Upgrade] |cFFFFFF%s/8|r", logPrefix, icon, currentUpgrade))
        end
    end
end

function CA.MiscAlertBank(eventCode, previousCapacity, currentCapacity, previousUpgrade, currentUpgrade)
    if CA.SV.MiscBags then
        local bracket1
        local bracket2
        local icon = ""
        local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_PURCHASED)

        -- If this isn't a bag upgrade purchase then ignore this event. We have a separate event handling mount space upgrades.
        if currentUpgrade < 1 then
            return
        end
        
        if currentUpgrade <= previousUpgrade then
            return
        end

        if CA.SV.ItemBracketDisplayOptions == 1 then
            bracket1 = "["
            bracket2 = "]"
        elseif CA.SV.ItemBracketDisplayOptions == 2 then
            bracket1 = "("
            bracket2 = ")"
        elseif CA.SV.ItemBracketDisplayOptions == 3 then
            bracket1 = ""
            bracket2 = " -"
        elseif CA.SV.ItemBracketDisplayOptions == 4 then
            bracket1 = ""
            bracket2 = ""
        end

        if CA.SV.LootIcons then
            icon = "|t16:16:/esoui/art/icons/store_upgrade_bank.dds|t "
        else
            icon = ""
        end

        if CA.SV.ItemContextToggle then
            logPrefix = CA.SV.ItemContextMessage
        end

        logPrefix = ChangeUpColorize:Colorize(strfmt("%s%s%s", bracket1, logPrefix, bracket2))

        if CA.SV.LootCurrencyCombo == true then
            printToChat(strfmt("%s %s[Bank Space Upgrade] |cFFFFFF%s/18|r%s", logPrefix, icon, currentUpgrade, g_comboString))
            g_comboString = ""
        else
            printToChat(strfmt("%s %s[Bank Space Upgrade] |cFFFFFF%s/18|r", logPrefix, icon, currentUpgrade))
        end
    end
end

function CA.OnBuybackItem(eventCode, itemName, quantity, money, itemSound)
    local icon
    local itemIcon,_,_,_,_ = GetItemLinkInfo(itemName)
    icon = itemIcon

    icon = ( CA.SV.LootIcons and icon and icon ~= "" ) and ("|t16:16:" .. icon .. "|t ") or ""

    local logPrefix = GetString(SI_ITEMFILTERTYPE8)
    if CA.SV.ItemContextToggle then
        logPrefix = ( CA.SV.ItemContextMessage )
    end

    local receivedBy = ""
    local gainorloss = 1

    CA.LogItem(logPrefix, icon, itemName, itemType, quantity, receivedBy, gainorloss)
end

function CA.OnBuyItem(eventCode, itemName, entryType, quantity, money, specialCurrencyType1, specialCurrencyInfo1, specialCurrencyQuantity1, specialCurrencyType2, specialCurrencyInfo2, specialCurrencyQuantity2, itemSoundCategory)
    local icon
    local itemIcon,_,_,_,_ = GetItemLinkInfo(itemName)
    icon = itemIcon

    icon = ( CA.SV.LootIcons and icon and icon ~= "" ) and ("|t16:16:" .. icon .. "|t ") or ""

    local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_PURCHASED)
    if CA.SV.ItemContextToggle then
        logPrefix = ( CA.SV.ItemContextMessage )
    end

    local receivedBy = ""
    local gainorloss = 1

    CA.LogItem(logPrefix, icon, itemName, itemType, quantity, receivedBy, gainorloss)
end

function CA.OnSellItem(eventCode, itemName, quantity, money)
    local icon
    local itemIcon,_,_,_,_ = GetItemLinkInfo(itemName)
    icon = itemIcon

    icon = ( CA.SV.LootIcons and icon and icon ~= "" ) and ("|t16:16:" .. icon .. "|t ") or ""

    local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_SOLD)
    if CA.SV.ItemContextToggle then
        logPrefix = ( CA.SV.ItemContextMessage )
    end

    local receivedBy = ""
    local gainorloss = 2

    CA.LogItem(logPrefix, icon, itemName, itemType, quantity, receivedBy, gainorloss)
end

function CA.OnLootReceived(eventCode, receivedBy, itemName, quantity, itemSound, lootType, lootedBySelf, isPickpocketLoot, questItemIcon, itemId)
    g_comboString = ""
    g_isLooted = true

    -- If we didn't receive the loot, and we don't have Only Notable loot shown then we ignore the rest of this event and everything is passed to Index functions
    if lootedBySelf and lootType ~= LOOT_TYPE_QUEST_ITEM then
        return
    end
    if not CA.SV.LootGroup then
        return
    end

    local icon
    -- fix Icon for missing quest items
    if lootType == LOOT_TYPE_QUEST_ITEM then
        icon = questItemIcon
    elseif lootType == LOOT_TYPE_COLLECTIBLE then
        local collectibleId = GetCollectibleIdFromLink(itemName)
        local _,_,collectibleIcon = GetCollectibleInfo(collectibleId)
        icon = collectibleIcon
    else
        -- Get Icon
        local itemIcon,_,_,_,_ = GetItemLinkInfo(itemName)
        icon = itemIcon
    end
    -- Create Icon string if icon exists and corresponding setting is ON
    icon = ( CA.SV.LootIcons and icon and icon ~= "" ) and ("|t16:16:" .. icon .. "|t ") or ""

    local itemType, specializedItemType = GetItemLinkItemType(itemName)
    local itemQuality = GetItemLinkQuality(itemName)
    local itemIsSet = GetItemLinkSetInfo(itemName)

    -- Workaround for a ZOS bug: Daedric Embers are not flagged in-game as key fragments
    if (itemId == 69059) then
        specializedItemType = SPECIALIZED_ITEMTYPE_TROPHY_KEY_FRAGMENT
    end

    local itemIsKeyFragment = (itemType == ITEMTYPE_TROPHY) and (specializedItemType == SPECIALIZED_ITEMTYPE_TROPHY_KEY_FRAGMENT)
    local itemIsSpecial = (itemType == ITEMTYPE_TROPHY and not itemIsKeyFragment) or (itemType == ITEMTYPE_COLLECTIBLE) or IsItemLinkConsumable(itemName)

    -- Check for Blacklisted loot
    if ( CA.SV.LootBlacklist and g_blacklistIDs[itemId] ) then
        return
    end

    -- Set prefix based on Looted/Pickpocket/Received
    local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_LOOTED)
    if ( isPickpocketLoot ) then
        logPrefix = GetString(SI_GAMECAMERAACTIONTYPE21)
    end
    if ( receivedBy == nil ) then
        logPrefix = GetString(SI_MAIL_INBOX_RECEIVED_COLUMN)
    end
    if CA.SV.ItemContextToggle then
        logPrefix = ( CA.SV.ItemContextMessage )
    end

    local gainorloss = 1

    if ( (lootType ~= LOOT_TYPE_ITEM and lootType ~= LOOT_TYPE_COLLECTIBLE) or
         (itemType == ITEMTYPE_CONTAINER) or -- Don't show containers for group members
         (itemQuality == ITEM_QUALITY_ARCANE and itemType == ITEMTYPE_RACIAL_STYLE_MOTIF) ) then -- Don't show blue motifs for group members
        return
    end
    if ( (itemIsSet) or
         (itemQuality >= ITEM_QUALITY_ARCANE and itemIsSpecial) or
         (itemQuality >= ITEM_QUALITY_ARTIFACT and not itemIsKeyFragment) or
         (lootType == LOOT_TYPE_COLLECTIBLE) or
         (g_notableIDs[itemId]) ) then

        CA.LogItem( logPrefix, icon, itemName, itemType, quantity, self and "" or receivedBy, gainorloss )
    end
end

function CA.LogItem(logPrefix, icon, itemName, itemType, quantity, receivedBy, gainorloss, istrade)
    --LoggedAnItem = true -- Set this to true, allows buffer to start!
    local bracket1
    local bracket2
    local color
    local message

    if gainorloss == 1 then
        color = ChangeUpColorize
    end
    if gainorloss == 2 then
        color = ChangeDownColorize
    end
    if gainorloss == 3 then
        color = ZO_SELECTED_TEXT
    end

    if CA.SV.ItemBracketDisplayOptions == 1 then
        bracket1 = "["
        bracket2 = "]"
    elseif CA.SV.ItemBracketDisplayOptions == 2 then
        bracket1 = "("
        bracket2 = ")"
    elseif CA.SV.ItemBracketDisplayOptions == 3 then
        bracket1 = ""
        bracket2 = " -"
    elseif CA.SV.ItemBracketDisplayOptions == 4 then
        bracket1 = ""
        bracket2 = ""
    end

    local formattedRecipient
    local formattedQuantity  = ""
    local formattedTrait     = ""
    local formattedArmorType = ""
    local formattedStyle     = ""
    local arrowPointer       = ""

    if (receivedBy == "" or receivedBy == "CRAFT") then
        -- Don't display yourself
        formattedRecipient = ""
    else
       -- Selects direction of pointer based on whether item is gained for lost, reversed for Trade purposes.
        if gainorloss == 1 and not istrade then
            arrowPointer = " →"
        elseif gainorloss == 2 and not istrade then
            arrowPointer = " ←"
        elseif gainorloss == 1 and istrade then
            arrowPointer = " ←"
        else
            arrowPointer = " →"
        end
        -- Create a character link to make it easier to contact the recipient
        formattedRecipient = strfmt(
            "%s |c%06X|H0:character:%s|h%s|h|r",
            arrowPointer,
            HashString(receivedBy) % 0x1000000, -- Use the hash of the name for the color so that is random, but consistent
            receivedBy,
            receivedBy:gsub("%^%a+$", "", 1)
        )
    end

    if (quantity > 1) then
        formattedQuantity = strfmt(" |cFFFFFFx%d|r", quantity)
    end

    local armorType = GetItemLinkArmorType(itemName) -- Get Armor Type of item
    if (CA.SV.LootShowArmorType and armorType ~= ARMORTYPE_NONE) then
        formattedArmorType = strfmt(" |cFFFFFF(%s)|r", GetString("SI_ARMORTYPE", armorType))
    end

    local traitType = GetItemLinkTraitInfo(itemName) -- Get Trait type of item
    if (CA.SV.LootShowTrait and traitType ~= ITEM_TRAIT_TYPE_NONE and itemType ~= ITEMTYPE_ARMOR_TRAIT and itemType ~= ITEMTYPE_WEAPON_TRAIT) then
        formattedTrait = strfmt(" |cFFFFFF(%s)|r", GetString("SI_ITEMTRAITTYPE", traitType))
    end

    local styleType = GetItemLinkItemStyle(itemName) -- Get Style of the item
    if (CA.SV.LootShowStyle and styleType ~= ITEMSTYLE_NONE and styleType ~= ITEMSTYLE_UNIQUE and styleType ~= ITEMSTYLE_UNIVERSAL and itemType ~= ITEMTYPE_STYLE_MATERIAL) then
        formattedStyle = strfmt(" |cFFFFFF(%s)|r", GetString("SI_ITEMSTYLE", styleType))
    end

    if g_oldItemLink ~= "" then
        itemName2 = (strfmt("%s → ", g_oldItemLink:gsub("^|H0", "|H1", 1)))
        g_oldItemLink = ""
    else
        itemName2 = ""
    end
    
    local total = ""
    if CA.SV.LootTotal and formattedRecipient == "" then
        local total1, total2, total3 = GetItemLinkStacks(itemName)
        total = total1 + total2 + total3
        if total > 1 then
            total = strfmt(" %s %s|cFEFEFE%s|r", color:Colorize(CA.SV.LootTotalString), icon, ZO_LocalizeDecimalNumber(total))
        else
            total = ""
        end
    end
    
    message = color:Colorize(strfmt("%s%s%s ", bracket1, logPrefix, bracket2))

    if receivedBy == "CRAFT"  and gainorloss == 1 then
        g_itemString1Gain = message

        if g_itemString2Gain ~= "" then g_itemString2Gain = strfmt("%s%s %s%s%s%s%s%s%s%s%s", g_itemString2Gain, color:Colorize(","), icon,
            itemName2,
            itemName:gsub("^|H0", "|H1", 1),
            formattedQuantity,
            formattedArmorType,
            formattedTrait,
            formattedStyle,
            formattedRecipient,
            g_comboString) end

        if g_itemString2Gain == "" then g_itemString2Gain = strfmt("%s%s%s%s%s%s%s%s%s", icon,
            itemName2,
            itemName:gsub("^|H0", "|H1", 1),
            formattedQuantity,
            formattedArmorType,
            formattedTrait,
            formattedStyle,
            formattedRecipient,
            g_comboString) end
        zo_callLater(CA.PrintMultiLineGain, 50)
    end

    if receivedBy == "CRAFT"  and gainorloss == 2 then
        g_itemString1Loss = message

        if g_itemString2Loss ~= "" then g_itemString2Loss = strfmt("%s%s %s%s%s%s%s%s%s%s%s", g_itemString2Loss, color:Colorize(","), icon,
            itemName2,
            itemName:gsub("^|H0", "|H1", 1),
            formattedQuantity,
            formattedArmorType,
            formattedTrait,
            formattedStyle,
            formattedRecipient,
            g_comboString) end

        if g_itemString2Loss == "" then g_itemString2Loss = strfmt("%s%s%s%s%s%s%s%s%s", icon,
            itemName2,
            itemName:gsub("^|H0", "|H1", 1),
            formattedQuantity,
            formattedArmorType,
            formattedTrait,
            formattedStyle,
            formattedRecipient,
            g_comboString) end
        zo_callLater(CA.PrintMultiLineLoss, 50)
    end

    if receivedBy ~= "CRAFT" then
        if not g_launderCheck then printToChat(strfmt(
            "%s%s%s%s%s%s%s%s%s%s%s",
            message,
            icon,
            itemName2,
            itemName:gsub("^|H0", "|H1", 1),
            formattedQuantity,
            formattedArmorType,
            formattedTrait,
            formattedStyle,
            formattedRecipient,
            total,
            g_comboString
        )) end

        if g_launderCheck then g_launderItemstring = (strfmt(
            "%s%s%s%s%s%s%s%s%s",
            message,
            icon,
            itemName2,
            itemName:gsub("^|H0", "|H1", 1),
            formattedQuantity,
            formattedArmorType,
            formattedTrait,
            formattedStyle,
            formattedRecipient,
            total
        )) end
    end

    g_launderCheck = false
    g_comboString = ""
end

function CA.PrintMultiLineGain()
    if g_itemString1Gain == "" then
        return
    end
    printToChat(g_itemString1Gain .. g_itemString2Gain)
    g_itemString1Gain = ""
    g_itemString2Gain = ""
end

function CA.PrintMultiLineLoss()
    if g_itemString1Loss == "" then
        return
    end
    printToChat(g_itemString1Loss .. g_itemString2Loss)
    g_itemString1Loss = ""
    g_itemString2Loss = ""
end

-- These 2 functions help us get the name of the person we are trading with regardless of who initiated the trade
function CA.TradeInviteWaiting(eventCode, inviteeCharacterName, inviteeDisplayName)
    g_tradeInvitee = inviteeCharacterName
    local characterNameLink = ZO_LinkHandler_CreateCharacterLink( gsub(inviteeCharacterName,"%^%a+","") )
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(inviteeDisplayName)
    local displayBothString = ( strformat("<<1>><<2>>", gsub(inviteeCharacterName,"%^%a+",""), inviteeDisplayName) )
    local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, inviteeDisplayName)
    if CA.SV.MiscTrade and CA.SV.ChatPlayerDisplayOptions == 1 then
        printToChat(strformat(GetString(SI_TRADE_INVITE_CONFIRM), displayNameLink))
    end
    if CA.SV.MiscTrade and CA.SV.ChatPlayerDisplayOptions == 2 then
        printToChat(strformat(GetString(SI_TRADE_INVITE_CONFIRM), characterNameLink))
    end
    if CA.SV.MiscTrade and CA.SV.ChatPlayerDisplayOptions == 3 then
        printToChat(strformat(GetString(SI_TRADE_INVITE_CONFIRM), displayBoth))
    end
end

-- These 2 functions help us get the name of the person we are trading with regardless of who initiated the trade
function CA.TradeInviteConsidering(eventCode, inviterCharacterName, inviterDisplayName)
    g_tradeInviter = inviterCharacterName
    local characterNameLink = ZO_LinkHandler_CreateCharacterLink( gsub(inviterCharacterName,"%^%a+","") )
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(inviterDisplayName)
    local displayBothString = ( strformat("<<1><<<2>>", gsub(inviterCharacterName,"%^%a+",""), inviterDisplayName) )
    local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, inviterDisplayName)
    if CA.SV.MiscTrade and CA.SV.ChatPlayerDisplayOptions == 1 then
        printToChat(strformat(GetString(SI_TRADE_INVITE), displayNameLink))
    end
    if CA.SV.MiscTrade and CA.SV.ChatPlayerDisplayOptions == 2 then
        printToChat(strformat(GetString(SI_TRADE_INVITE), characterNameLink))
    end
    if CA.SV.MiscTrade and CA.SV.ChatPlayerDisplayOptions == 3 then
        printToChat(strformat(GetString(SI_TRADE_INVITE), displayBoth))
    end
end

function CA.TradeInviteAccepted(eventCode)
    if CA.SV.MiscTrade then
        printToChat(GetString(SI_LUIE_CA_TRADE_INVITE_ACCEPTED))
    end
end

function CA.TradeInviteFailed(eventCode, reason, inviteeCharacterName, inviteeDisplayName)
    if CA.SV.MiscTrade then
        local failName
        local characterNameLink = ZO_LinkHandler_CreateCharacterLink( gsub(inviteeCharacterName,"%^%a+","") )
        local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(inviteeDisplayName)
        local displayBothString = ( strformat("<<1>><<2>>", gsub(inviteeCharacterName,"%^%a+",""), inviteeDisplayName) )
        local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, inviteeDisplayName)

        if CA.SV.ChatPlayerDisplayOptions == 1 then
            failName = displayNameLink
        end
        if CA.SV.ChatPlayerDisplayOptions == 2 then
            failName = characterNameLink
        end
        if CA.SV.ChatPlayerDisplayOptions == 3 then
            failName = displayBoth
        end

        printToChat(strformat(GetString("SI_TRADEACTIONRESULT", reason), failName))
    end
end

function CA.TradeElevationFailed(eventCode, reason, itemName)
    if CA.SV.MiscTrade then
        printToChat(strformat(GetString("SI_TRADEACTIONRESULT", reason), itemName))
    end
end

function CA.TradeItemAddFailed(eventCode, reason, itemName)
    if CA.SV.MiscTrade then
        printToChat(strformat(GetString("SI_TRADEACTIONRESULT", reason), itemName))
    end
end

function CA.TradeInviteDecline(eventCode)
    if CA.SV.MiscTrade then
        printToChat(GetString(SI_TRADE_INVITE_DECLINE))
    end
    g_tradeStacksIn = {}
    g_tradeStacksOut = {}
    g_tradeInviter = ""
    g_tradeInvitee = ""
end

function CA.TradeInviteCancel(eventCode)
    if CA.SV.MiscTrade then
        printToChat(GetString(SI_TRADE_CANCEL_INVITE))
    end
    g_tradeStacksIn = {}
    g_tradeStacksOut = {}
    g_tradeInviter = ""
    g_tradeInvitee = ""
end

-- Adds item to index when they are added to the trade
function CA.OnTradeAdded(eventCode, who, tradeIndex, itemSoundCategory)
    -- d( "tradeIndex: " .. tradeIndex .. " --- WHO: " .. who )
    if who == 0 then
        local indexOut = tradeIndex
        local name, icon, stack = GetTradeItemInfo (who, tradeIndex)
        local tradeitemlink = GetTradeItemLink (who, tradeIndex, LINK_STYLE_DEFAULT)
        g_tradeStacksOut[indexOut] = {stack=stack, name=name, icon=icon, itemlink=tradeitemlink}
    else
        local indexIn = tradeIndex
        local name, icon, stack = GetTradeItemInfo (who, tradeIndex)
        local tradeitemlink = GetTradeItemLink (who, tradeIndex, LINK_STYLE_DEFAULT)
        g_tradeStacksIn[indexIn] = {stack=stack, name=name, icon=icon, itemlink=tradeitemlink}
    end
end

-- Removes items from index if they are removed from the trade
function CA.OnTradeRemoved(eventCode, who, tradeIndex, itemSoundCategory)
    if who == 0 then
        local indexOut = tradeIndex
        g_tradeStacksOut[indexOut] = nil
    else
        local indexIn = tradeIndex
        g_tradeStacksIn[indexIn] = nil
    end
end

-- Cleanup if a Trade is canceled/exited
function CA.TradeCancel(eventCode, cancelerName)
    if CA.SV.MiscTrade then
        printToChat(GetString(SI_TRADE_CANCELED))
    end
    g_tradeStacksIn = {}
    g_tradeStacksOut = {}
    g_tradeInviter = ""
    g_tradeInvitee = ""
end

function CA.TradeFail(eventCode, reason)
    if CA.SV.MiscTrade then
        printToChat(GetString("SI_TRADEACTIONRESULT", reason))
    end
    g_tradeStacksIn = {}
    g_tradeStacksOut = {}
    g_tradeInviter = ""
    g_tradeInvitee = ""
end

-- Sends results of the trade to the Item Log print function and clears variables so they are reset for next trade interactions
function CA.OnTradeSuccess(eventCode)
    g_comboString = ""

    g_tradeDisablePrint = true
    -- Disables print to chat from item indexing momentarily while out trade results process!
    local function ResetItemPrinting()
        g_tradeDisablePrint = false
    end

    zo_callLater(ResetItemPrinting, 500)

    if CA.SV.MiscTrade then
        printToChat(GetString(SI_TRADE_COMPLETE))
    end
    if CA.SV.MiscTrade and g_tradeString1 ~= "" then
        printToChat(g_tradeString1)
    end
    if CA.SV.MiscTrade and g_tradeString2 ~= "" then
        printToChat(g_tradeString2)
    end

    if CA.SV.LootTrade then
        if g_tradeInviter == "" then
            tradetarget = g_tradeInvitee
        end
        if g_tradeInvitee == "" then
            tradetarget = g_tradeInviter
        end
        for indexOut = 1,5 do
            if g_tradeStacksOut[indexOut] ~= nil then
                local gainorloss = 2
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_TRADED)
                if CA.SV.ItemContextToggle then
                    logPrefix = ( CA.SV.ItemContextMessage )
                end
                local receivedBy = tradetarget
                local istrade = true
                local item = g_tradeStacksOut[indexOut]
                local itemType = GetItemLinkItemType(item.itemlink)
                icon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
                --CA.OnLootReceived(eventCode, nil, item.itemlink, item.stack or 1, nil, LOOT_TYPE_ITEM, true, false, _, _, tradevalue) Hanging onto this for now
                CA.LogItem(logPrefix, icon, item.itemlink, itemType, item.stack or 1, receivedBy, gainorloss, istrade)
            end
        end

        for indexIn = 1,5 do
            if g_tradeStacksIn[indexIn] ~= nil then
                local gainorloss = 1
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_TRADED)
                if CA.SV.ItemContextToggle then
                    logPrefix = ( CA.SV.ItemContextMessage )
                end
                local receivedBy = tradetarget
                local istrade = true
                local item = g_tradeStacksIn[indexIn]
                local itemType = GetItemLinkItemType(item.itemlink)
                icon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
                --CA.OnLootReceived(eventCode, nil, item.itemlink, item.stack or 1, nil, LOOT_TYPE_ITEM, true, false, _, _, tradevalue) Hanging onto this for now
                CA.LogItem(logPrefix, icon, item.itemlink, itemType, item.stack or 1, receivedBy, gainorloss, istrade)
            end
        end
    end

    g_tradeStacksIn = {}
    g_tradeStacksOut = {}
    g_tradeInviter = ""
    g_tradeInvitee = ""
    g_tradeString1 = ""
    g_tradeString2 = ""
end

function CA.MailMoneyChanged(eventCode, moneyAmount)
    g_mailMoney = moneyAmount
    g_mailMoneyBackup = moneyAmount
    g_mailCOD = 0
    g_mailCODBackup = 0
    g_postageAmount = GetQueuedMailPostage()
end

function CA.MailCODChanged(eventCode, codAmount)
    g_mailCOD = codAmount
    g_mailCODBackup = codAmount
    g_mailMoney = 0
    g_mailMoneyBackup = 0
    g_postageAmount = GetQueuedMailPostage()
end

function CA.MailRemoved(eventCode)
    if CA.SV.MiscMail then
        printToChat(GetString(SI_LUIE_CA_MAIL_DELETED_MSG))
    end
    g_saveMailId = ""
end

function CA.OnMailReadable(eventCode, mailId)
    g_mailStacks = 0

    local numAttachments = GetMailAttachmentInfo( mailId )

    for i = 1, numAttachments do
        g_mailStacks = g_mailStacks + 1
    end
    g_saveMailId = mailId
end

function CA.OnMailTakeAttachedItem(eventCode, mailId)
    local plural = "s"
    if g_mailStacks == 1 then
        plural = ""
    end
    -- If we've already looted an item from this indexed mail and our inventory was full, don't try to print another message
    if g_mailStacks == 0 then
        return
    end

    g_mailStringPart1 = (strformat(GetString(SI_LUIE_CA_MAIL_RECEIVED_ATTACHMENT), g_mailStacks, plural) )
    zo_callLater(PrintMailAttachmentsIfNoGold, 25) -- We call this with a super short delay, it will return a string as long as a currency change event doesn't trigger beforehand!

    g_mailStacks = 0
end

function PrintMailAttachmentsIfNoGold()
    if CA.SV.MiscMail and g_mailStringPart1 ~= "" then
        printToChat(strformat("<<1>>.", g_mailStringPart1) ) -- Append a dot
    end
    g_mailStringPart1 = "" -- Important to clear this string, if we took a mail with only items attached, we don't want the next mail with gold to falsely show that attachments were taken!
end

function CA.OnMailAttach(eventCode, attachmentSlot)
    -- d(attachmentSlot) -- Debug
    g_postageAmount = GetQueuedMailPostage()
    local mailIndex = attachmentSlot
    local _, _, icon, stack = GetQueuedItemAttachmentInfo(attachmentSlot)
    local mailitemlink = GetMailQueuedAttachmentLink(attachmentSlot, LINK_STYLE_DEFAULT)
    g_mailStacksOut[mailIndex] = {stack=stack, name=name, icon=icon, itemlink=mailitemlink}
end

-- Removes items from index if they are removed from the trade
function CA.OnMailAttachRemove(eventCode, attachmentSlot)
    g_postageAmount = GetQueuedMailPostage()
    local mailIndex = attachmentSlot
    g_mailStacksOut[mailIndex] = nil
end

function CA.OnMailOpenBox(eventCode)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE)
    if CA.SV.LootMail then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE, CA.InventoryUpdate)
        g_inventoryStacks = {}
        CA.IndexInventory() -- Index Inventory
    end
    if g_saveMailId ~= "" then
        CA.OnMailReadable(eventCode, g_saveMailId)
    end
    g_weAreInMail = true
end

function CA.OnMailCloseBox(eventCode)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE)
    if CA.SV.Loot or CA.SV.ShowDestroy or CA.SV.ShowConfiscate or CA.SV.ShowDisguise or CA.SV.ShowLockpickBreak then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE, CA.InventoryUpdate)
    end
    if not (CA.SV.Loot or CA.SV.ShowDestroy or CA.SV.ShowConfiscate or CA.SV.ShowDisguise or CA.SV.ShowLockpickBreak) then
        g_inventoryStacks = {}
    end
    g_mailStacksOut = {}
    g_weAreInMail = false
end

function CA.OnMailFail(eventCode, reason)
    local function RestoreMailBackupValues()
        g_postageAmount = GetQueuedMailPostage()
        g_mailCOD = g_mailCODBackup
        g_mailMoney = g_mailMoneyBackup
        g_mailCODBackup = 0
        g_mailMoneyBackup = 0
    end

    if CA.SV.MiscMail then
        printToChat(GetString("SI_SENDMAILRESULT", reason))
        g_mailStop = true -- Prevents mail received message from firing on a failed sent mail
        zo_callLater(CA.MailClearVariables, 50)
    end
    zo_callLater(RestoreMailBackupValues, 50) -- Prevents values from being cleared by failed message (when inbox is full, the currency change fires first regardless and then is refunded)
end

function CA.MailClearVariables()
    g_mailStop = false
    g_mailCurrencyCheck = true
end

-- Sends results of the trade to the Item Log print function and clears variables so they are reset for next trade interactions
function CA.OnMailSuccess(eventCode)
    g_comboString = ""
    zo_callLater(CA.FunctionMailCurrencyCheck, 50)

    if CA.SV.LootMail then
        for mailIndex = 1,6 do -- Have to iterate through all 6 possible mail attachments, otherwise nil values will bump later items off the list potentially.
            if g_mailStacksOut[mailIndex] ~= nil then
                local gainorloss = 2
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_SENT)
                if CA.SV.ItemContextToggle then
                    logPrefix = ( CA.SV.ItemContextMessage )
                end
                local receivedBy = ""
                local item = g_mailStacksOut[mailIndex]
                icon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
                local itemType = GetItemLinkItemType(item.itemlink)
                --CA.OnLootReceived(eventCode, nil, item.itemlink, item.stack or 1, nil, LOOT_TYPE_ITEM, true, false, _, _, tradevalue) Hanging onto this for now
                CA.LogItem(logPrefix, icon, item.itemlink, itemType, item.stack or 1, receivedBy, gainorloss)
            end
        end
    end

    g_mailStacksOut = {}
    g_mailCOD = 0
    g_mailCODBackup = 0
    g_mailMoney = 0
    g_mailMoneyBackup = 0
    g_postageAmount = 0
end

function CA.FunctionMailCurrencyCheck()
    if g_mailCurrencyCheck and CA.SV.MiscMail then
        printToChat(GetString(SI_LUIE_CA_MAIL_SENT_SUCCESS))
    end
end

function CA.LevelUpdateHelper()
    IsChampion = IsUnitChampion("player")

    if IsChampion then
        CurrentLevel = GetPlayerChampionPointsEarned()
        if CurrentLevel < 10 then
            CurrentLevel = 10  -- Probably don't really need this here, but it's not going to hurt.
        end
        XPLevel = GetNumChampionXPInChampionPoint(CurrentLevel)
        LevelContext = GetString(SI_MAIN_MENU_CHAMPION)
    else
        CurrentLevel = GetUnitLevel ("player")
        XPLevel = GetNumExperiencePointsInLevel(CurrentLevel)
        LevelContext = GetString(SI_EXPERIENCE_LEVEL_LABEL)
    end
end

local function ExperiencePctToColour(xppct)
    return xppct == 100 and "71DE73" or xppct < 33.33 and "F27C7C" or xppct < 66.66 and "EDE858" or "CCF048"
end

function CA.PrintBufferedXP()
    if g_XPCombatBufferValue ~= 0 then
        printToChat(g_XPCombatBufferString) -- If we leveled up, then this variable will be true, and we want to smash all the buffered XP into the level up display!
        g_XPCombatBufferValue = 0
        g_XPCombatBufferString = ""
    end
end

function CA.OnLevelUpdate(eventCode, unitTag, level)
    if unitTag == ("player") then

        CA.LevelUpdateHelper()
        local icon

        if CA.SV.ExperienceColorLevel then
            icon = zo_iconFormatInheritColor("LuiExtended/media/unitframes/unitframes_level_normal.dds", 16, 16)
            icon = CA.SV.LevelUpIcon and ZO_XP_BAR_GRADIENT_COLORS[2]:Colorize(strfmt("%s ", icon)) or ( " " )
        else
           icon = zo_iconFormat("LuiExtended/media/unitframes/unitframes_level_normal.dds", 16, 16)
           icon = CA.SV.LevelUpIcon and (strfmt("%s ", icon)) or ( " " )
        end

        local attribute
        local CurrentLevelFormatted = ZO_XP_BAR_GRADIENT_COLORS[2]:Colorize(LevelContext .. " " .. CurrentLevel)

        if IsChampion then
            attribute = GetChampionPointAttributeForRank( GetPlayerChampionPointsEarned()+1 )
            if attribute == ATTRIBUTE_NONE then
                icon = CA.SV.LevelUpIcon and (" |t16:16:LuiExtended/media/unitframes/unitframes_level_champion.dds|t ") or ( " " )
            end
            if attribute == ATTRIBUTE_HEALTH then
                icon = CA.SV.LevelUpIcon and (" |t16:16:/esoui/art/champion/champion_points_health_icon-hud-32.dds|t ") or ( " " )
            end
            if attribute == ATTRIBUTE_MAGICKA then
                icon = CA.SV.LevelUpIcon and (" |t16:16:/esoui/art/champion/champion_points_magicka_icon-hud-32.dds|t ") or ( " " )
            end
            if attribute == ATTRIBUTE_STAMINA then
                icon = CA.SV.LevelUpIcon and (" |t16:16:/esoui/art/champion/champion_points_stamina_icon-hud-32.dds|t ") or ( " " )
            end
            CurrentLevelFormatted = ZO_CP_BAR_GRADIENT_COLORS[attribute][2]:Colorize(LevelContext .. " " .. CurrentLevel)
        end

        if not g_levelChanged1 or g_crossover == 1 then
            if g_questString1 ~= "" and g_questString2 ~= "" and CA.SV.Experience then
                printToChat(g_questString1)
                printToChat(g_questString2)
            elseif g_questString1 ~= "" and g_questString2 == "" and CA.SV.Experience then
                printToChat(g_questString1)
            elseif g_questString1 == "" and g_questString2 ~= "" and CA.SV.Experience then
                printToChat(g_questString2)
            end

            if CA.SV.ExperienceLevelUp and g_crossover == 0 then
                if CA.SV.ExperienceColorLevel then
                    printToChat(strformat("<<1>><<2>><<3>>", GetString(SI_LUIE_CA_LVL_ANNOUNCE_XP), icon, CurrentLevelFormatted))
                else
                    printToChat(strformat("<<1>><<2>><<3>> <<4>>", GetString(SI_LUIE_CA_LVL_ANNOUNCE_XP), icon, LevelContext, CurrentLevel))
                end
            end
            if CA.SV.ExperienceLevelUp and g_crossover == 1 then
                if CA.SV.ExperienceColorLevel then
                    printToChat(strformat("<<1>><<2>><<3>>", GetString(SI_LUIE_CA_LVL_ANNOUNCE_CP), icon, CurrentLevelFormatted))
                else
                    printToChat(strformat("<<1>><<2>><<3>> <<4>>", GetString(SI_LUIE_CA_LVL_ANNOUNCE_CP), icon, LevelContext, CurrentLevel))
                end
            end
        else
            if g_questString1 ~= "" and g_questString2 ~= "" and CA.SV.Experience then
                printToChat(g_questString1)
            elseif g_questString1 ~= "" and g_questString2 == "" and CA.SV.Experience then
                printToChat(g_questString1)
            elseif g_questString1 == "" and g_questString2 ~= "" and CA.SV.Experience then
                printToChat(g_questString2)
            end

            if CA.SV.ExperienceLevelUp and g_crossover == 0 then
                if CA.SV.ExperienceColorLevel then
                    printToChat(strformat("<<1>><<2>><<3>>", GetString(SI_LUIE_CA_LVL_ANNOUNCE_XP), icon, CurrentLevelFormatted))
                else
                    printToChat(strformat("<<1>><<2>><<3>> <<4>>", GetString(SI_LUIE_CA_LVL_ANNOUNCE_XP), icon, LevelContext, CurrentLevel))
                end
            end
            if CA.SV.ExperienceLevelUp and g_crossover == 1 then
                if CA.SV.ExperienceColorLevel then
                    printToChat(strformat("<<1>><<2>><<3>>", GetString(SI_LUIE_CA_LVL_ANNOUNCE_CP), icon, CurrentLevelFormatted))
                else
                    printToChat(strformat("<<1>><<2>><<3>> <<4>>", GetString(SI_LUIE_CA_LVL_ANNOUNCE_CP), icon, LevelContext, CurrentLevel))
                end
            end

            if g_questString1 ~= "" and g_questString2 ~= "" and CA.SV.Experience then
                printToChat(g_questString2)
            end
        end

    end

    g_weLeveled = 0
    g_crossover = 0
    g_questString1 = ""
    g_questString2 = ""
    g_questCombiner1 = ""
    g_questCombiner2 = ""
    g_questCombiner2Alt = ""
    g_levelChanged1 = false
    g_totalLevelAdjust = ""
    g_levelCarryOverValue = 0
end

function CA.OnChampionUpdate(eventCode, unitTag, oldChampionPoints, currentChampionPoints)
    if unitTag == ("player") then
        CA.LevelUpdateHelper()

        local attribute = GetChampionPointAttributeForRank( GetPlayerChampionPointsEarned()+1 )
        local icon
        if attribute == ATTRIBUTE_NONE then
            icon = CA.SV.LevelUpIcon and (" |t16:16:LuiExtended/media/unitframes/unitframes_level_champion.dds|t ") or ( " " )
        end
        if attribute == ATTRIBUTE_HEALTH then
            icon = CA.SV.LevelUpIcon and (" |t16:16:/esoui/art/champion/champion_points_health_icon-hud-32.dds|t ") or ( " " )
        end
        if attribute == ATTRIBUTE_MAGICKA then
            icon = CA.SV.LevelUpIcon and (" |t16:16:/esoui/art/champion/champion_points_magicka_icon-hud-32.dds|t ") or ( " " )
        end
        if attribute == ATTRIBUTE_STAMINA then
            icon = CA.SV.LevelUpIcon and (" |t16:16:/esoui/art/champion/champion_points_stamina_icon-hud-32.dds|t ") or ( " " )
        end
        local CurrentLevelFormatted = ZO_CP_BAR_GRADIENT_COLORS[attribute][2]:Colorize(LevelContext .. " " .. CurrentLevel)

        if not g_levelChanged1 or g_crossover == 1 then
            if g_questString1 ~= "" and g_questString2 ~= "" and CA.SV.Experience then
                printToChat(g_questString1)
                printToChat(g_questString2)
            elseif g_questString1 ~= "" and g_questString2 == "" and CA.SV.Experience then
                printToChat(g_questString1)
            elseif g_questString1 == "" and g_questString2 ~= "" and CA.SV.Experience then
                printToChat(g_questString2)
            end

            if CA.SV.ExperienceLevelUp then
                if CA.SV.ExperienceColorLevel then
                    printToChat(strformat("<<1>><<2>><<3>>", GetString(SI_LUIE_CA_LVL_ANNOUNCE_XP), icon, CurrentLevelFormatted))
                else
                    printToChat(strformat("<<1>><<2>><<3>> <<4>>", GetString(SI_LUIE_CA_LVL_ANNOUNCE_XP), icon, LevelContext, CurrentLevel))
                end
            end
        else
            if g_questString1 ~= "" and g_questString2 ~= "" and CA.SV.Experience then
                printToChat(g_questString1)
            elseif g_questString1 ~= "" and g_questString2 == "" and CA.SV.Experience then
                printToChat(g_questString1)
            elseif g_questString1 == "" and g_questString2 ~= "" and CA.SV.Experience then
                printToChat(g_questString2)
            end

            if CA.SV.ExperienceLevelUp then
                if CA.SV.ExperienceColorLevel then
                    printToChat(strformat("<<1>><<2>><<3>>", GetString(SI_LUIE_CA_LVL_ANNOUNCE_XP), icon, CurrentLevelFormatted))
                else
                    printToChat(strformat("<<1>><<2>><<3>> <<4>>", GetString(SI_LUIE_CA_LVL_ANNOUNCE_XP), icon, LevelContext, CurrentLevel))
                end
            end

            if g_questString1 ~= "" and g_questString2 ~= "" and CA.SV.Experience then
                printToChat(g_questString2)
            end
        end

    end

    g_weLeveled = 0
    g_crossover = 0
    g_questString1 = ""
    g_questString2 = ""
    g_questCombiner1 = ""
    g_questCombiner2 = ""
    g_questCombiner2Alt = ""
    g_levelChanged1 = false
    g_totalLevelAdjust = ""
    g_levelCarryOverValue = 0
end

function CA.OnExperienceGain(eventCode, reason, level, previousExperience, currentExperience, championPoints)
    -- d("Experience Gain) previousExperience: " .. previousExperience .. " --- " .. "currentExperience: " .. currentExperience)
    local levelhelper = 0 -- Gives us the correct value of XP to use toward the next level when calculating progress after a level up

    -- Determines if we leveled up - Needs to be functioning even if we don't printout progress or current level
    if currentExperience >= XPLevel then
        if not IsChampion and CurrentLevel == 49 then -- If we are level 49 and we level up that means we've reached Champion Level, this means we need to update these values!
            g_crossover = 1 -- Variable incrementer to help us determine if we just reached Champion Level
            IsChampion = true
        end
        g_weLeveled = 1
        if IsChampion then
            CurrentLevel = GetPlayerChampionPointsEarned()
            if CurrentLevel < 10 then
                CurrentLevel = 10 -- Very important, if this player has never hit Champion level before, set the minimum possible value when hitting level 50.
            end
            XPLevel = GetNumChampionXPInChampionPoint(CurrentLevel)
            LevelContext = GetString(SI_MAIN_MENU_CHAMPION)
        else
            CurrentLevel = CurrentLevel + 1
            XPLevel = GetNumExperiencePointsInLevel(CurrentLevel)
            LevelContext = GetString(SI_EXPERIENCE_LEVEL_LABEL)
        end
    end

    if IsChampion then
        levelhelper = GetPlayerChampionXP()
    else
        levelhelper = GetUnitXP ("player")
    end

    if g_crossover == 1 then
        levelhelper = GetNumExperiencePointsInLevel(49)
        XPLevel = GetNumExperiencePointsInLevel(49)
    end

    if CA.SV.Experience and ( not ( CA.SV.ExperienceHideCombat and reason == 0 ) or not reason == 0 ) then
        -- Change in Experience Points on gaining them
        local change = currentExperience - previousExperience
        local formathelper = " "
        local totallevel = ""
        local progressbrackets = ""
        local progress = "" -- String returned depending on whether Progress Option is toggled on or off

        -- Format Helper puts a space in if the player enters a value for Experience Name, this way they don't have to do this formatting themselves.
        if CA.SV.ExperienceName == ( "" ) then
            formathelper = ""
        end

        -- Displays an icon if enabled
        local icon = CA.SV.ExperienceIcon and ("|t16:16:/esoui/art/icons/icon_experience.dds|t " .. ZO_LocalizeDecimalNumber (change) .. formathelper .. CA.SV.ExperienceName ) or ( ZO_LocalizeDecimalNumber (change) .. formathelper .. CA.SV.ExperienceName )

        -- If quest turnin, we save the first part of this string to combine with another in case this is followed up by POI completion event too.
        if reason == 1 or reason == 7 then
            g_levelCarryOverValue = currentExperience
            g_questCombiner1 = CA.SV.ExperienceIcon and ("|t16:16:/esoui/art/icons/icon_experience.dds|t " .. ZO_LocalizeDecimalNumber (change) .. formathelper .. CA.SV.ExperienceName ) or ( ZO_LocalizeDecimalNumber (change) .. formathelper .. CA.SV.ExperienceName )
        end

        -- Add to the throttled XP count if it is enabled
        if CA.SV.ExperienceThrottle > 0 and reason == 0 then
            g_XPCombatBufferValue = g_XPCombatBufferValue + change
            icon = CA.SV.ExperienceIcon and ("|t16:16:/esoui/art/icons/icon_experience.dds|t " .. ZO_LocalizeDecimalNumber (g_XPCombatBufferValue) .. formathelper .. CA.SV.ExperienceName ) or ( ZO_LocalizeDecimalNumber (g_XPCombatBufferValue) .. formathelper .. CA.SV.ExperienceName )
        end

        local xppct = 0    -- XP Percent
        local decimal = 0  -- If we're using a % value, this is the string that determines whether we have a decimal point or not.

        if CA.SV.ExperienceShowProgress then
            if CA.SV.ExperienceShowDecimal then
                xppct = math.floor(10000*levelhelper/XPLevel) / 100
            else
                xppct = math.floor(100*levelhelper/XPLevel)
            end

            if CA.SV.ExperienceShowPBrackets then -- If [Progress] display brackets are hidden, then the XP numbers will just print on the end
                progressbrackets = strfmt( " %s", CA.SV.ExperienceProgressName )
            end

            -- Configures progress experience configuration options
            if CA.SV.ExperienceProgressColor then
                decimal = strfmt( "|c%s%s", ExperiencePctToColour(xppct), xppct)
            else
                decimal = strfmt( "%s", xppct)
            end

            if CA.SV.ExperienceDisplayOptions == 1 then
                if CA.SV.ExperienceProgressColor then
                    progress = strfmt( "%s (|c%s%s|r/|c71DE73%s|r)", progressbrackets, ExperiencePctToColour(xppct), ZO_LocalizeDecimalNumber (levelhelper), ZO_LocalizeDecimalNumber (XPLevel) )
                else
                    progress = strfmt( "%s (%s/%s)|r", progressbrackets, ZO_LocalizeDecimalNumber (levelhelper), ZO_LocalizeDecimalNumber (XPLevel) )
                end
            elseif CA.SV.ExperienceDisplayOptions == 2 then
                if CA.SV.ExperienceProgressColor then
                    progress = strfmt("%s (%s%%|r)", progressbrackets, decimal)
                else
                    progress = strfmt("%s (%s%%|r)", progressbrackets, decimal)
                end
            elseif CA.SV.ExperienceDisplayOptions == 3 then
                if CA.SV.ExperienceProgressColor then
                    progress = strfmt("%s (%s%%|r - |c%s%s|r/|c71DE73%s|r)", progressbrackets, decimal, ExperiencePctToColour(xppct), ZO_LocalizeDecimalNumber (levelhelper), ZO_LocalizeDecimalNumber (XPLevel) )
                else
                    progress = strfmt("%s (%s%%|r - %s/%s)|r", progressbrackets, decimal, ZO_LocalizeDecimalNumber (levelhelper), ZO_LocalizeDecimalNumber (XPLevel) )
                end
            end

            -- Big ass bullshit duplicate to create alternate string for Reason 2 on quest turnin with POI completion too
            if reason == 2 and g_questCombiner1 ~= "" then
                -- CALCULATION 1
                levelhelper = levelhelper - change
                if g_crossover == 1 then
                    levelhelper = XPLevel -- If we crossover XP on this level then we just auto set this to max xp/level value for 50.
                end

                if CA.SV.ExperienceShowDecimal then
                    xppct = math.floor(10000*levelhelper/XPLevel) / 100
                else
                    xppct = math.floor(100*levelhelper/XPLevel)
                end

                -- Configures progress experience configuration options
                if CA.SV.ExperienceProgressColor then
                    decimal = strfmt( "|c%s%s", ExperiencePctToColour(xppct), xppct)
                else
                    decimal = strfmt( "%s", xppct)
                end

                if CA.SV.ExperienceDisplayOptions == 1 then
                    if CA.SV.ExperienceProgressColor then
                        g_questCombiner2 = strfmt( "%s (|c%s%s|r/|c71DE73%s|r)", progressbrackets, ExperiencePctToColour(xppct), ZO_LocalizeDecimalNumber (levelhelper), ZO_LocalizeDecimalNumber (XPLevel) )
                    else
                        g_questCombiner2 = strfmt( "%s (%s/%s)|r", progressbrackets, ZO_LocalizeDecimalNumber (levelhelper), ZO_LocalizeDecimalNumber (XPLevel) )
                    end
                elseif CA.SV.ExperienceDisplayOptions == 2 then
                    if CA.SV.ExperienceProgressColor then
                        g_questCombiner2 = strfmt("%s (%s%%|r)", progressbrackets, decimal)
                    else
                        g_questCombiner2 = strfmt("%s (%s%%|r)", progressbrackets, decimal)
                    end
                elseif CA.SV.ExperienceDisplayOptions == 3 then
                    if CA.SV.ExperienceProgressColor then
                        g_questCombiner2 = strfmt("%s (%s%%|r - |c%s%s|r/|c71DE73%s|r)", progressbrackets, decimal, ExperiencePctToColour(xppct), ZO_LocalizeDecimalNumber (levelhelper), ZO_LocalizeDecimalNumber (XPLevel) )
                    else
                        g_questCombiner2 = strfmt("%s (%s%%|r - %s/%s)|r", progressbrackets, decimal, ZO_LocalizeDecimalNumber (levelhelper), ZO_LocalizeDecimalNumber (XPLevel) )
                    end
                end

                -- CALCULATION 2
                local XPLevelAlt

                if IsChampion then
                    local AdjustLevel = GetPlayerChampionPointsEarned() -1
                    if AdjustLevel < 10 then
                        AdjustLevel = 10 -- Very important, if this player has never hit Champion level before, set the minimum possible value when hitting level 50.
                    end
                    XPLevelAlt = GetNumChampionXPInChampionPoint(AdjustLevel)
                    if g_crossover == 1 then
                        XPLevelAlt = GetNumExperiencePointsInLevel(49)
                    end
                else
                    local AdjustLevel = CurrentLevel -1
                    XPLevelAlt = GetNumExperiencePointsInLevel(AdjustLevel)
                end

                levelhelper = g_levelCarryOverValue

                if CA.SV.ExperienceShowDecimal then
                    xppct = math.floor(10000*levelhelper/XPLevelAlt) / 100
                else
                    xppct = math.floor(100*levelhelper/XPLevelAlt)
                end

                -- Configures progress experience configuration options
                if CA.SV.ExperienceProgressColor then
                    decimal = strfmt( "|c%s%s", ExperiencePctToColour(xppct), xppct)
                else
                    decimal = strfmt( "%s", xppct)
                end

                if CA.SV.ExperienceDisplayOptions == 1 then
                    if CA.SV.ExperienceProgressColor then
                        g_questCombiner2Alt = strfmt( "%s (|c%s%s|r/|c71DE73%s|r)", progressbrackets, ExperiencePctToColour(xppct), ZO_LocalizeDecimalNumber (levelhelper), ZO_LocalizeDecimalNumber (XPLevelAlt) )
                    else
                        g_questCombiner2Alt = strfmt( "%s (%s/%s)|r", progressbrackets, ZO_LocalizeDecimalNumber (levelhelper), ZO_LocalizeDecimalNumber (XPLevelAlt) )
                    end
                elseif CA.SV.ExperienceDisplayOptions == 2 then
                    if CA.SV.ExperienceProgressColor then
                        g_questCombiner2Alt = strfmt("%s (%s%%|r)", progressbrackets, decimal)
                    else
                        g_questCombiner2Alt = strfmt("%s (%s%%|r)", progressbrackets, decimal)
                    end
                elseif CA.SV.ExperienceDisplayOptions == 3 then
                    if CA.SV.ExperienceProgressColor then
                        g_questCombiner2Alt = strfmt("%s (%s%%|r - |c%s%s|r/|c71DE73%s|r)", progressbrackets, decimal, ExperiencePctToColour(xppct), ZO_LocalizeDecimalNumber (levelhelper), ZO_LocalizeDecimalNumber (XPLevelAlt) )
                    else
                        g_questCombiner2Alt = strfmt("%s (%s%%|r - %s/%s)|r", progressbrackets, decimal, ZO_LocalizeDecimalNumber (levelhelper), ZO_LocalizeDecimalNumber (XPLevelAlt) )
                    end
                end
                -- End big ass bullshit duplicate function
            end
        end

        if CA.SV.ExperienceShowLevel then
            local attribute
            local levelicon
            if CA.SV.ExperienceColorLevel then
                if IsChampion then
                    attribute = GetChampionPointAttributeForRank( GetPlayerChampionPointsEarned() +1)
                    if attribute == ATTRIBUTE_NONE then
                        levelicon = CA.SV.LevelTotalIcon and ("|t16:16:LuiExtended/media/unitframes/unitframes_level_champion.dds|t ") or ( "" )
                    end
                    if attribute == ATTRIBUTE_HEALTH then
                        levelicon = CA.SV.LevelTotalIcon and ("|t16:16:/esoui/art/champion/champion_points_health_icon-hud-32.dds|t ") or ( "" )
                    end
                    if attribute == ATTRIBUTE_MAGICKA then
                        levelicon = CA.SV.LevelTotalIcon and ("|t16:16:/esoui/art/champion/champion_points_magicka_icon-hud-32.dds|t ") or ( "" )
                    end
                    if attribute == ATTRIBUTE_STAMINA then
                        levelicon = CA.SV.LevelTotalIcon and ("|t16:16:/esoui/art/champion/champion_points_stamina_icon-hud-32.dds|t ") or ( "" )
                    end
                    totallevel = ZO_CP_BAR_GRADIENT_COLORS[attribute][2]:Colorize(strfmt(" %s%s %s", levelicon, LevelContext, CurrentLevel))
                else
                    levelicon = zo_iconFormatInheritColor("LuiExtended/media/unitframes/unitframes_level_normal.dds", 16, 16)
                    levelicon = CA.SV.LevelTotalIcon and (strfmt("%s ", levelicon)) or ( "" )
                    totallevel = ZO_XP_BAR_GRADIENT_COLORS[2]:Colorize(strfmt(" %s%s %s", levelicon, LevelContext, CurrentLevel))
                end
            else
                levelicon = zo_iconFormat("LuiExtended/media/unitframes/unitframes_level_normal.dds", 16, 16)
                levelicon = CA.SV.LevelTotalIcon and (strfmt("%s ", levelicon)) or ( "" )
                totallevel = strfmt( " %s%s %s", levelicon, LevelContext, CurrentLevel)
            end

            if g_questCombiner1 ~= "" then
                local levelicon
                if CA.SV.ExperienceColorLevel then
                    if IsChampion then
                        attribute = GetChampionPointAttributeForRank( GetPlayerChampionPointsEarned() )
                        if attribute == ATTRIBUTE_NONE then
                            levelicon = CA.SV.LevelTotalIcon and ("|t16:16:LuiExtended/media/unitframes/unitframes_level_champion.dds|t ") or ( "" )
                        end
                        if attribute == ATTRIBUTE_HEALTH then
                            levelicon = CA.SV.LevelTotalIcon and ("|t16:16:/esoui/art/champion/champion_points_health_icon-hud-32.dds|t ") or ( "" )
                        end
                        if attribute == ATTRIBUTE_MAGICKA then
                            levelicon = CA.SV.LevelTotalIcon and ("|t16:16:/esoui/art/champion/champion_points_magicka_icon-hud-32.dds|t ") or ( "" )
                        end
                        if attribute == ATTRIBUTE_STAMINA then
                            levelicon = CA.SV.LevelTotalIcon and ("|t16:16:/esoui/art/champion/champion_points_stamina_icon-hud-32.dds|t ") or ( "" )
                        end
                        g_totalLevelAdjust = ZO_CP_BAR_GRADIENT_COLORS[attribute][2]:Colorize(strfmt(" %s%s %s", levelicon, LevelContext, CurrentLevel -1))
                    else
                        levelicon = zo_iconFormatInheritColor("LuiExtended/media/unitframes/unitframes_level_normal.dds", 16, 16)
                        levelicon = CA.SV.LevelTotalIcon and (strfmt("%s ", levelicon)) or ( "" )
                        g_totalLevelAdjust = ZO_XP_BAR_GRADIENT_COLORS[2]:Colorize(strfmt(" %s%s %s", levelicon, LevelContext, CurrentLevel -1))
                    end
                else
                    if IsChampion then
                        local attribute = GetChampionPointAttributeForRank( GetPlayerChampionPointsEarned()+1 )

                        if attribute == ATTRIBUTE_NONE then
                            levelicon = CA.SV.LevelTotalIcon and ("|t16:16:LuiExtended/media/unitframes/unitframes_level_champion.dds|t ") or ( "" )
                        end
                        if attribute == ATTRIBUTE_HEALTH then
                            levelicon = CA.SV.LevelTotalIcon and ("|t16:16:/esoui/art/champion/champion_points_health_icon-hud-32.dds|t ") or ( "" )
                        end
                        if attribute == ATTRIBUTE_MAGICKA then
                            levelicon = CA.SV.LevelTotalIcon and ("|t16:16:/esoui/art/champion/champion_points_magicka_icon-hud-32.dds|t ") or ( "" )
                        end
                        if attribute == ATTRIBUTE_STAMINA then
                            levelicon = CA.SV.LevelTotalIcon and ("|t16:16:/esoui/art/champion/champion_points_stamina_icon-hud-32.dds|t ") or ( "" )
                        end
                        g_totalLevelAdjust = strfmt( " %s%s %s", levelicon, LevelContext, CurrentLevel -1)
                    else
                        levelicon = zo_iconFormat("LuiExtended/media/unitframes/unitframes_level_normal.dds", 16, 16)
                        levelicon = CA.SV.LevelTotalIcon and (strfmt("%s ", levelicon)) or ( "" )
                        g_totalLevelAdjust = strfmt( " %s%s %s", levelicon, LevelContext, CurrentLevel -1)
                    end
                end
            end
        else
            if g_questCombiner1 ~= "" then
                g_totalLevelAdjust = ""
            end
        end

        --[[ Crossover from Normal XP --> Champion XP modifier ]] --
        if g_crossover == 1 then
            -- progress = (progressbrackets .. " (Level 50)")
            local levelicon
            if CA.SV.ExperienceColorLevel then
                levelicon = zo_iconFormatInheritColor("LuiExtended/media/unitframes/unitframes_level_normal.dds", 16, 16)
                levelicon = CA.SV.LevelTotalIcon and (strfmt("%s ", levelicon)) or ( "" )
                totallevel = ZO_XP_BAR_GRADIENT_COLORS[2]:Colorize( strformat(" <<1>><<2>> 50", levelicon, GetString(SI_EXPERIENCE_LEVEL_LABEL)) ) -- "Level"
            else
                levelicon = zo_iconFormat("LuiExtended/media/unitframes/unitframes_level_normal.dds", 16, 16)
                levelicon = CA.SV.LevelTotalIcon and (strfmt("%s ", levelicon)) or ( "" )
                totallevel = ZO_XP_BAR_GRADIENT_COLORS[2]:Colorize( strformat(" <<1>><<2>> 50", levelicon, GetString(SI_EXPERIENCE_LEVEL_LABEL)) ) -- "Level"
            end
            if g_questCombiner1 ~= "" then
                -- g_questCombiner2 = (progressbrackets .. " (Level 50)")
                if CA.SV.ExperienceShowLevel then
                    if CA.SV.ExperienceColorLevel then
                        levelicon = zo_iconFormatInheritColor("LuiExtended/media/unitframes/unitframes_level_normal.dds", 16, 16)
                        levelicon = CA.SV.LevelTotalIcon and (strfmt("%s ", levelicon)) or ( "" )
                        g_totalLevelAdjust = ZO_XP_BAR_GRADIENT_COLORS[2]:Colorize( strformat(" <<1>> 49", levelicon, GetString(SI_EXPERIENCE_LEVEL_LABEL)) )
                    else
                        levelicon = zo_iconFormat("LuiExtended/media/unitframes/unitframes_level_normal.dds", 16, 16)
                        levelicon = CA.SV.LevelTotalIcon and (strfmt("%s ", levelicon)) or ( "" )
                        g_totalLevelAdjust = strformat(" <<1>><<2>> 49", levelicon, GetString(SI_EXPERIENCE_LEVEL_LABEL))
                    end
                end
            end
        end

        -- If we gain experience from a non combat source, and our buffer function holds a value, then we need to immediately dump this value before the next XP update is processed.
        if reason ~= 0 and CA.SV.ExperienceThrottle > 0 and g_XPCombatBufferValue > 0 then
            g_XPCombatBufferValue = 0
            printToChat(g_XPCombatBufferString)
        end

        if reason == 1 or reason == 7 then
            if g_weLeveled == 1 then
                g_levelChanged1 = true
            end
            g_questString1 = ( strfmt("%s %s%s%s", CA.SV.ExperienceContextName, icon, progress, totallevel) )
            zo_callLater(CA.PrintQuestExperienceHelper, 50)
        elseif reason == 2 then
            if g_questCombiner1 ~= "" then
                if g_weLeveled == 1 and not g_levelChanged1 then
                    g_questString1 = ( strfmt("%s %s%s%s", CA.SV.ExperienceContextName, g_questCombiner1, g_questCombiner2Alt, g_totalLevelAdjust) )
                else
                    g_questString1 = ( strfmt("%s %s%s%s", CA.SV.ExperienceContextName, g_questCombiner1, g_questCombiner2, totallevel) )
                end
            end
            g_questString2 = ( strfmt("%s %s%s%s", CA.SV.ExperienceContextName, icon, progress, totallevel) )
            zo_callLater(CA.PrintQuestExperienceHelper, 50)
        elseif reason == 0 then
            if change > CA.SV.ExperienceFilter and CA.SV.ExperienceThrottle == 0 then
                printToChat(strfmt("%s %s%s%s", CA.SV.ExperienceContextName, icon, progress, totallevel) )
            elseif CA.SV.ExperienceThrottle > 0 then
                g_XPCombatBufferString = ( strfmt("%s %s%s%s", CA.SV.ExperienceContextName, icon, progress, totallevel) )
                zo_callLater(CA.PrintBufferedXP, CA.SV.ExperienceThrottle)
            end
        else
            printToChat(strfmt("%s %s%s%s", CA.SV.ExperienceContextName, icon, progress, totallevel) )
        end
    end
end

function CA.PrintQuestExperienceHelper()
    if g_weLeveled == 1 then
        return
    end

    if g_questString1 ~= "" and g_questString2 ~= "" and CA.SV.Experience then
        printToChat(g_questString1)
        printToChat(g_questString2)
    elseif g_questString1 ~= "" and g_questString2 == "" and CA.SV.Experience then
        printToChat(g_questString1)
    elseif g_questString1 == "" and g_questString2 ~= "" and CA.SV.Experience then
        printToChat(g_questString2)
    end

    g_questString1 = ""
    g_questString2 = ""
    g_questCombiner1 = ""
    g_questCombiner2 = ""
    g_questCombiner2Alt = ""
    g_levelChanged1 = false
    g_totalLevelAdjust = ""
    g_levelCarryOverValue = 0
end

function CA.EnlightenedGained(eventCode)
    printToChat(strformat("<<1>>! <<2>>", GetString(SI_ENLIGHTENED_STATE_GAINED_HEADER), GetString(SI_ENLIGHTENED_STATE_GAINED_DESCRIPTION)))
end

function CA.EnlightenedLost(eventCode)
    printToChat(strformat("<<1>>!", GetString(SI_ENLIGHTENED_STATE_LOST_HEADER)))
end

-- Helper function to return color (without |c prefix) according to current percentage
local function AchievementPctToColour(pct)
    return pct == 1 and "71DE73" or pct < 0.33 and "F27C7C" or pct < 0.66 and "EDE858" or "CCF048"
end

function CA.PrintAchievementDetails(stringpart1, stringpart2, stringpart3, stringpart4)
    printToChat( strfmt("%s%s%s%s", stringpart1, stringpart2, stringpart3, stringpart4))
end

function CA.OnAchievementUpdated(eventCode, id)

    local topLevelIndex, categoryIndex, achievementIndex = GetCategoryInfoFromAchievementId(id)

    -- Bail out if this achievement comes from unwanted category
    if topLevelIndex == 1 and not CA.SV.AchievementCategory1 then return end
    if topLevelIndex == 2 and not CA.SV.AchievementCategory2 then return end
    if topLevelIndex == 3 and not CA.SV.AchievementCategory3 then return end
    if topLevelIndex == 4 and not CA.SV.AchievementCategory4 then return end
    if topLevelIndex == 5 and not CA.SV.AchievementCategory5 then return end
    if topLevelIndex == 6 and not CA.SV.AchievementCategory6 then return end
    if topLevelIndex == 7 and not CA.SV.AchievementCategory7 then return end
    if topLevelIndex == 8 and not CA.SV.AchievementCategory8 then return end
    if topLevelIndex == 9 and not CA.SV.AchievementCategory9 then return end
    if topLevelIndex == 10 and not CA.SV.AchievementCategory10 then return end
    if topLevelIndex == 11 and not CA.SV.AchievementCategory11 then return end
    --if topLevelIndex == 12 and not CA.SV.AchievementCategory12 then return end
    
    local totalCmp = 0
    local totalReq = 0
    local showInfo = false

    local numCriteria = GetAchievementNumCriteria(id)
    local cmpInfo = {}
    for i = 1, numCriteria do
        local name, numCompleted, numRequired = GetAchievementCriterion(id, i)

        table.insert(cmpInfo, { strformat(name), numCompleted, numRequired })

        -- Collect the numbers to calculate the correct percentage
        totalCmp = totalCmp + numCompleted
        totalReq = totalReq + numRequired

        -- Show the achievement on every special achievement because it's a rare event
        if numRequired == 1 and numCompleted == 1 then
            showInfo = true
        end
    end
    
    if not showInfo then
        -- Achievement completed        
        -- This is the first numCompleted value
        -- Show every time
        if ( totalCmp == totalReq ) or ( totalCmp == 1 ) or ( CA.SV.AchievementsStep == 0 ) then
            showInfo = true
        else
            -- Achievement step hit
            local percentage = math.floor( 100 / totalReq * totalCmp )

            if percentage > 0 and percentage % CA.SV.AchievementsStep == 0 and g_lastPercentage[id] ~= percentage then
                showInfo = true
                g_lastPercentage[id] = percentage
            end
        end
    end

    -- Bail out here if this achievement update event is not going to be printed to chat
    if not showInfo then
        return
    end
    
    local bracket1
    local bracket2

    if CA.SV.AchievementsBracketOptions == 1 then
        bracket1 = "["
        bracket2 = "]"
    elseif CA.SV.AchievementsBracketOptions == 2 then
        bracket1 = "("
        bracket2 = ")"
    elseif CA.SV.AchievementsBracketOptions == 3 then
        bracket1 = ""
        bracket2 = " -"
    elseif CA.SV.AchievementsBracketOptions == 4 then
        bracket1 = ""
        bracket2 = ""
    end
    
    local link = strformat(GetAchievementLink(id, LINK_STYLE_BRACKETS))
    local catName = GetAchievementCategoryInfo(topLevelIndex)
    local subcatName = categoryIndex ~= nil and GetAchievementSubCategoryInfo(topLevelIndex, categoryIndex) or "General"
    local _, _, _, icon = GetAchievementInfo(id)
    icon = CA.SV.AchievementsIcon and ("|t16:16:" .. icon .. "|t ") or ""
    
    local stringpart1 = AchievementsColorize:Colorize(strfmt("%s %s%s (", CA.SV.AchievementsProgressMsg, icon, link))
    
    local stringpart2 = CA.SV.AchievementsColorProgress and strfmt("|c%s%d%%|r", AchievementPctToColour(totalCmp/totalReq), math.floor(100*totalCmp/totalReq)) or AchievementsColorize:Colorize(strfmt("%d%%", math.floor(100*totalCmp/totalReq)))
    
    local stringpart3
    if CA.SV.AchievementsCategory and CA.SV.AchievementsSubcategory then
        stringpart3 = AchievementsColorize:Colorize(strfmt(") %s%s - %s%s", bracket1, catName, subcatName, bracket2))
    elseif CA.SV.AchievementsCategory and not CA.SV.AchievementsSubcategory then
        stringpart3 = AchievementsColorize:Colorize(strfmt(") %s%s%s", bracket1, catName, bracket2))
    else
        stringpart3 = AchievementsColorize:Colorize(")")
    end
    
    -- Prepare details information
    local stringpart4 = ""
    if CA.SV.AchievementsDetails then
        -- Skyshards needs separate treatment otherwise text become too long
        -- We also put this short information for achievements that has too many subitems
        if topLevelIndex == 9 or #cmpInfo > 12 then
            stringpart4 = CA.SV.AchievementsColorProgress and strfmt( " %s|c%s%d|r%s|c71DE73%d|c87B7CC|r%s", AchievementsColorize:Colorize("("), AchievementPctToColour(totalCmp/totalReq), totalCmp, AchievementsColorize:Colorize("/"), totalReq, AchievementsColorize:Colorize(")") ) or AchievementsColorize:Colorize(strfmt( " (%d/%d)", totalCmp, totalReq))
        else
            for i = 1, #cmpInfo do
                -- Boolean achievement stage
                if cmpInfo[i][3] == 1 then
                    cmpInfo[i] = CA.SV.AchievementsColorProgress and strfmt( "|c%s%s", AchievementPctToColour(cmpInfo[i][2]), cmpInfo[i][1] ) or AchievementsColorize:Colorize(strfmt( "%s%s", cmpInfo[i][2], cmpInfo[i][1] ))
                -- Others
                else
                    local pct = cmpInfo[i][2] / cmpInfo[i][3]
                    cmpInfo[i] = CA.SV.AchievementsColorProgress and strfmt( "%s %s|c%s%d|r%s|c71DE73%d|r%s", AchievementsColorize:Colorize(cmpInfo[i][1]), AchievementsColorize:Colorize("("), AchievementPctToColour(pct), cmpInfo[i][2], AchievementsColorize:Colorize("/"), cmpInfo[i][3], AchievementsColorize:Colorize(")") ) or AchievementsColorize:Colorize(strfmt( "%s (%d/%d)", cmpInfo[i][1], cmpInfo[i][2], cmpInfo[i][3] ))
                end
            end
            stringpart4 = " " .. table.concat(cmpInfo, AchievementsColorize:Colorize(", ")) .. ""
        end
    end
    zo_callLater(function() CA.PrintAchievementDetails(stringpart1, stringpart2, stringpart3, stringpart4) end, 100)
end

function CA.OnAchievementAwarded(eventCode, name, points, id, link)

    local topLevelIndex, categoryIndex, achievementIndex = GetCategoryInfoFromAchievementId(id)
    
    -- Bail out if this achievement comes from unwanted category
    if topLevelIndex == 1 and not CA.SV.AchievementCategory1 then return end
    if topLevelIndex == 2 and not CA.SV.AchievementCategory2 then return end
    if topLevelIndex == 3 and not CA.SV.AchievementCategory3 then return end
    if topLevelIndex == 4 and not CA.SV.AchievementCategory4 then return end
    if topLevelIndex == 5 and not CA.SV.AchievementCategory5 then return end
    if topLevelIndex == 6 and not CA.SV.AchievementCategory6 then return end
    if topLevelIndex == 7 and not CA.SV.AchievementCategory7 then return end
    if topLevelIndex == 8 and not CA.SV.AchievementCategory8 then return end
    if topLevelIndex == 9 and not CA.SV.AchievementCategory9 then return end
    if topLevelIndex == 10 and not CA.SV.AchievementCategory10 then return end
    if topLevelIndex == 11 and not CA.SV.AchievementCategory11 then return end
    --if topLevelIndex == 12 and not CA.SV.AchievementCategory12 then return end
    
    local bracket1
    local bracket2

    if CA.SV.AchievementsBracketOptions == 1 then
        bracket1 = "["
        bracket2 = "]"
    elseif CA.SV.AchievementsBracketOptions == 2 then
        bracket1 = "("
        bracket2 = ")"
    elseif CA.SV.AchievementsBracketOptions == 3 then
        bracket1 = ""
        bracket2 = " -"
    elseif CA.SV.AchievementsBracketOptions == 4 then
        bracket1 = ""
        bracket2 = ""
    end
    
    link = strformat(GetAchievementLink(id, LINK_STYLE_BRACKETS))
    local catName = GetAchievementCategoryInfo(topLevelIndex)
    local subcatName = categoryIndex ~= nil and GetAchievementSubCategoryInfo(topLevelIndex, categoryIndex) or "General"
    local _, _, _, icon = GetAchievementInfo(id)
    icon = CA.SV.AchievementsIcon and ("|t16:16:" .. icon .. "|t ") or ""
    
    local stringpart1 = AchievementsColorize:Colorize(strfmt("%s %s%s", CA.SV.AchievementsCompleteMsg, icon, link))
    
    local stringpart2
    if CA.SV.AchievementsCompPercentage then 
        stringpart2 = CA.SV.AchievementsColorProgress and strfmt(" %s|c71DE73%s|r%s", AchievementsColorize:Colorize("("), ("100%"), AchievementsColorize:Colorize(")")) or AchievementsColorize:Colorize (" (100%)")
    else
        stringpart2 = ""
    end
    
    local stringpart3
    if CA.SV.AchievementsCategory and CA.SV.AchievementsSubcategory then
        stringpart3 = AchievementsColorize:Colorize(strfmt(" %s%s - %s%s", bracket1, catName, subcatName, bracket2))
    elseif CA.SV.AchievementsCategory and not CA.SV.AchievementsSubcategory then
        stringpart3 = AchievementsColorize:Colorize(strfmt(" %s%s%s", bracket1, catName, bracket2))
    else
        stringpart3 = AchievementsColorize:Colorize("")
    end
    local stringpart4 = ""
    
    zo_callLater(function() CA.PrintAchievementDetails(stringpart1, stringpart2, stringpart3, stringpart4) end, 100)
    
end

function CA.LoreBookLearned(eventCode, categoryIndex, collectionIndex, bookIndex, guildIndex, isMaxRank)

    local collectionName, _, numKnownBooks, totalBooks, hidden = GetLoreCollectionInfo(categoryIndex, collectionIndex)
    
    if hidden and CA.SV.LorebookNoShowHide then
        return
    end

    local bracket1
    local bracket2

    if CA.SV.LorebookBracketOptions == 1 then
        bracket1 = "["
        bracket2 = "]"
    elseif CA.SV.LorebookBracketOptions == 2 then
        bracket1 = "("
        bracket2 = ")"
    elseif CA.SV.LorebookBracketOptions == 3 then
        bracket1 = "- "
        bracket2 = ""
    elseif CA.SV.LorebookBracketOptions == 4 then
        bracket1 = ""
        bracket2 = ""
    end

    local prefix
    if categoryIndex == 1 then
        prefix = CA.SV.LorebookPrefix1
    -- Special handling here, as the standard motif styles without chapters are lumped into this category as well.
    elseif (categoryIndex == 2 and collectionIndex ~= 1) or (categoryIndex == 2 and collectionIndex == 1 and bookIndex >= 3 and bookIndex <= 16) or (categoryIndex == 2 and collectionIndex == 1 and bookIndex == 23) then
        prefix = CA.SV.LorebookPrefix2
    else
        prefix = CA.SV.LorebookPrefix3
    end

    local title, icon = GetLoreBookInfo(categoryIndex, collectionIndex, bookIndex)
    icon = CA.SV.AchievementsIcon and ("|t16:16:" .. icon .. "|t ") or ""
    
    local category
    if CA.SV.LorebookCategory and not hidden then
        local message1 = strfmt(" %s%s%s", bracket1, collectionName, bracket2)
        if CA.SV.LorebookNumber then
            --local percentage = math.floor( 100 / numKnownBooks * totalBooks )
            if CA.SV.LorebookNumberColor then
                category = strfmt(" %s|c%s%s|r%s|c71DE73%s|r%s%s", LorebookColorize:Colorize("("), AchievementPctToColour(numKnownBooks/totalBooks), numKnownBooks, LorebookColorize:Colorize("/"), totalBooks, LorebookColorize:Colorize(")"), LorebookColorize:Colorize(message1)) 
            else
                category = LorebookColorize:Colorize(strfmt(" (%s/%s)%s", numKnownBooks, totalBooks, message1))
            end
        else
        category = LorebookColorize:Colorize(message1)
        end
    else
        category = ""
    end

    local bookName = strfmt("[%s]", title)
    local bookLink = strfmt("|H1:LINK_TYPE_LUIBOOK:%s:%s:%s|h%s|h", categoryIndex, collectionIndex, bookIndex, bookName)

    printToChat(strfmt("%s %s%s%s", LorebookColorize:Colorize(prefix), icon, bookLink, category))

end
 
function LUIE.HandleClickEvent(rawLink, mouseButton, linkText, linkStyle, linkType, categoryIndex, collectionIndex, bookIndex)
  if linkType == "LINK_TYPE_LUIBOOK" then
    -- Read the book
    ZO_LoreLibrary_ReadBook(categoryIndex, collectionIndex, bookIndex)
    return true
  end
end

function CA.GuildBankItemAdded(eventCode, slotId)
    zo_callLater(CA.LogGuildBankChange, 50)
end

function CA.GuildBankItemRemoved(eventCode, slotId)
    zo_callLater(CA.LogGuildBankChange, 50)
end

function CA.LogGuildBankChange()
    CA.LogItem(g_guildBankCarryLogPrefix, g_guildBankCarryIcon, g_guildBankCarryItemLink, g_guildBankCarryItemType, g_guildBankCarryStackCount or 1, g_guildBankCarryReceivedBy, g_guildBankCarryGainorloss)
    g_guildBankCarryLogPrefix   = ""
    g_guildBankCarryIcon        = ""
    g_guildBankCarryItemLink    = ""
    g_guildBankCarryStackCount  = 1
    g_guildBankCarryReceivedBy  = ""
    g_guildBankCarryGainorloss  = ""
    g_guildBankCarryItemType    = ""
end

function CA.IndexInventory()
    --d("Debug - Inventory Indexed!")
    local bagsize = GetBagSize(1)

    for i = 0,bagsize do
        local icon, stack = GetItemInfo(1, i)
        local bagitemlink = GetItemLink(1, i, LINK_STYLE_DEFAULT)
        if bagitemlink ~= "" then
            g_inventoryStacks[i] = { icon=icon, stack=stack, itemlink=bagitemlink}
        end
    end
end

function CA.IndexEquipped()
    --d("Debug - Equipped Items Indexed!")
    local bagsize = GetBagSize(0)

    for i = 0,bagsize do
        local icon, stack = GetItemInfo(0, i)
        local bagitemlink = GetItemLink(0, i, LINK_STYLE_DEFAULT)
        if bagitemlink ~= "" then
            g_equippedStacks[i] = { icon=icon, stack=stack, itemlink=bagitemlink}
        end
    end
end

function CA.IndexBank()
    --d("Debug - Bank Indexed!")
    local bagsizebank = GetBagSize(2)
    local bagsizesubbank = GetBagSize(6)

    for i = 0,bagsizebank do
        local icon, stack = GetItemInfo(2, i)
        local bagitemlink = GetItemLink(2, i, LINK_STYLE_DEFAULT)
        if bagitemlink ~= "" then
            g_bankStacks[i] = { icon=icon, stack=stack, itemlink=bagitemlink}
        end
    end
    
    for i = 0,bagsizesubbank do
        local icon, stack = GetItemInfo(6, i)
        local bagitemlink = GetItemLink(6, i, LINK_STYLE_DEFAULT)
        if bagitemlink ~= "" then
            g_banksubStacks[i] = { icon=icon, stack=stack, itemlink=bagitemlink}
        end
    end 
    
end

function CA.CraftingOpen(eventCode, craftSkill, sameStation)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE)
    if CA.SV.LootCraft then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE, CA.InventoryUpdateCraft)
        g_inventoryStacks = {}
        g_bankStacks = {}
        g_banksubStacks = {}
        CA.IndexInventory() -- Index Inventory
        CA.IndexBank() -- Index Bank
    end
end

function CA.CraftingClose(eventCode, craftSkill)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE)
    if CA.SV.Loot or CA.SV.ShowDestroy or CA.SV.ShowConfiscate or CA.SV.ShowDisguise or CA.SV.ShowLockpickBreak then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE, CA.InventoryUpdate)
    end
    if not (CA.SV.Loot or CA.SV.ShowDestroy or CA.SV.ShowConfiscate or CA.SV.ShowDisguise or CA.SV.ShowLockpickBreak) then
        g_inventoryStacks = {}
    end
    g_bankStacks = {}
    g_banksubStacks = {}
end

function CA.BankOpen(eventCode)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE)
    if CA.SV.LootBank then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE, CA.InventoryUpdateBank)
        g_inventoryStacks = {}
        g_bankStacks = {}
        g_banksubStacks = {}
        CA.IndexInventory() -- Index Inventory
        CA.IndexBank() -- Index Bank
    end
end

function CA.BankClose(eventCode)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE)
    if CA.SV.Loot or CA.SV.ShowDestroy or CA.SV.ShowConfiscate or CA.SV.ShowDisguise or CA.SV.ShowLockpickBreak then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE, CA.InventoryUpdate)
    end
    if not (CA.SV.Loot or CA.SV.ShowDestroy or CA.SV.ShowConfiscate or CA.SV.ShowDisguise or CA.SV.ShowLockpickBreak) then
        g_inventoryStacks = {}
    end
    g_bankStacks = {}
    g_banksubStacks = {}
end

function CA.GuildBankOpen(eventCode)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE)
    if CA.SV.LootBank then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE, CA.InventoryUpdateGuildBank)
        g_inventoryStacks = {}
        CA.IndexInventory() -- Index Inventory
    end
end

function CA.GuildBankClose(eventCode)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE)
    if CA.SV.Loot or CA.SV.ShowDestroy or CA.SV.ShowConfiscate or CA.SV.ShowDisguise or CA.SV.ShowLockpickBreak then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE, CA.InventoryUpdate)
    end
    if not (CA.SV.Loot or CA.SV.ShowDestroy or CA.SV.ShowConfiscate or CA.SV.ShowDisguise or CA.SV.ShowLockpickBreak) then
        g_inventoryStacks = {}
    end
end

function CA.FenceOpen(eventCode, allowSell, allowLaunder)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE)
    if CA.SV.LootVendor then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE, CA.InventoryUpdateFence)
        g_inventoryStacks = {}
        CA.IndexInventory() -- Index Inventory
    end
end

function CA.StoreOpen(eventCode)
    g_weAreInAStore = true
end

function CA.StoreClose(eventCode)
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE)
    if CA.SV.Loot or CA.SV.ShowDestroy or CA.SV.ShowConfiscate or CA.SV.ShowDisguise or CA.SV.ShowLockpickBreak then
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_INVENTORY_SINGLE_SLOT_UPDATE, CA.InventoryUpdate)
    end
    if not (CA.SV.Loot or CA.SV.ShowDestroy or CA.SV.ShowConfiscate or CA.SV.ShowDisguise or CA.SV.ShowLockpickBreak) then
        g_inventoryStacks = {}
    end
    g_weAreInAStore = false
end

function CA.FenceSuccess(eventCode, result)
    if result == 1 then
        g_isValidLaunder = true
        CA.FenceHelper() -- Can probably consolidate this, however leaving the functions separated until no bugs confirmed. Was thinking about putting a 50 ms delay on it just to make sure everything has time to go through.
    end
end

function CA.FenceHelper()
    if not CA.SV.LootCurrencyCombo then
        printToChat(g_launderGoldstring)
        printToChat(g_launderItemstring)
    else
        printToChat(strformat("<<1>> → <<2>>", g_launderItemstring, g_launderGoldstring))
    end

    g_launderGoldstring = ""
    g_launderItemstring = ""
    g_isValidLaunder = false
end

-- Only active if destroyed items is enabled, flags the next item that is removed from inventory as destroyed.
function CA.DestroyItem(eventCode, itemSoundCategory)
    g_itemWasDestroyed = true
end

-- Helper function for Craft Bag
function CA.GetItemLinkFromItemId(itemId)
    local name = GetItemLinkName(ZO_LinkHandler_CreateLink("Test Trash", nil, ITEM_LINK_TYPE,itemId, 1, 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 10000, 0))
    return ZO_LinkHandler_CreateLink(strformat("<<t:1>>", name), nil, ITEM_LINK_TYPE,itemId, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
end

local printNextChange = true
local unequipHelper = false

function CA.PrintInventoryIndexChanges(itemId, seticon, item, itemType, stackCountChange, receivedBy, gainorloss)
    -- ResetIsLooted first before we potentially return the rest of the function
    local function ResetIsLooted()
        g_isLooted = false
    end
    zo_callLater(ResetIsLooted, 50)

    -- Return if any of these statments are true
    if g_tradeDisablePrint then return end
    if not printNextChange then return end
    if unequipHelper then return end

        -- If the itemID is on the blacklist, don't show
        if ( CA.SV.LootBlacklist and g_blacklistIDs[itemid] ) then
            return
        end

        local _, specializedItemType = GetItemLinkItemType(item)
        local itemQuality = GetItemLinkQuality(item)
        local itemIsSet = GetItemLinkSetInfo(item)

        -- Workaround for a ZOS bug: Daedric Embers are not flagged in-game as key fragments
        if (itemId == 69059) then
            specializedItemType = SPECIALIZED_ITEMTYPE_TROPHY_KEY_FRAGMENT
        end

        local itemIsKeyFragment = (itemType == ITEMTYPE_TROPHY) and (specializedItemType == SPECIALIZED_ITEMTYPE_TROPHY_KEY_FRAGMENT)
        local itemIsSpecial = (itemType == ITEMTYPE_TROPHY and not itemIsKeyFragment) or (itemType == ITEMTYPE_COLLECTIBLE) or IsItemLinkConsumable(item)

        local logPrefix = g_isLooted and GetString(SI_LUIE_CA_PREFIX_MESSAGE_LOOTED) or GetString(SI_MAIL_INBOX_RECEIVED_COLUMN)

        if g_itemReceivedIsQuestReward then logPrefix = GetString(SI_MAIL_INBOX_RECEIVED_COLUMN) end -- Override function for quest rewards

        if CA.SV.LootOnlyNotable and not g_weAreInMail then
            -- Notable items are: any set items, any purple+ items, blue+ special items (e.g., treasure maps)
            if ( (itemIsSet) or
                 (itemQuality >= ITEM_QUALITY_ARCANE and itemIsSpecial) or
                 (itemQuality >= ITEM_QUALITY_ARTIFACT and not itemIsKeyFragment) or
                 (itemType == ITEMTYPE_COSTUME) or
                 (itemType == ITEMTYPE_DISGUISE) or
                 (g_notableIDs[itemId]) ) then

                CA.LogItem(logPrefix, seticon, item, itemType, stackCountChange or 1, receivedBy, gainorloss)
            end
        elseif CA.SV.LootNotTrash and ( itemQuality == ITEM_QUALITY_TRASH ) and not ( ( itemType == ITEMTYPE_ARMOR) or (itemType == ITEMTYPE_COSTUME) or (itemType == ITEMTYPE_DISGUISE) ) then
            return
        else
            CA.LogItem(logPrefix, seticon, item, itemType, stackCountChange or 1, receivedBy, gainorloss)
        end
end

function CA.ResetPrintNextChange()
    printNextChange = true
end

function CA.UpdateUnequipHelperValue()
    unequipHelper = false
end

-- Only used if the option to see destroyed items or items lost from a guard is turned on
function CA.InventoryUpdate(eventCode, bagId, slotId, isNewItem, itemSoundCategory, inventoryUpdateReason, stackCountChange)
    if bagId == BAG_WORN then
        local receivedBy = ""
        if not g_equippedStacks[slotId] then -- NEW ITEM
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_equippedStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_equippedStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)
            local gainorloss = 3
            local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DISGUISE_EQUIP)
            if CA.SV.ShowDisguise and slotId == 10 and (itemType == ITEMTYPE_COSTUME or itemType == ITEMTYPE_DISGUISE) then
                --CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
                CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
            end

        elseif g_equippedStacks[slotId] then -- EXISTING ITEM
            -- Means item was modified (enchanted, etc)
            if stackCountChange == 0 then -- For equipment, stackCountChange 0 is also applied when gear is swapped out. This means we need to update the index on this change.
                unequipHelper = true
                zo_callLater (CA.UpdateUnequipHelperValue, 350)
                local icon, stack = GetItemInfo(bagId, slotId)
                local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                g_equippedStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
                if CA.SV.ShowDisguise and slotId == 10 then
                    local item = g_equippedStacks[slotId]
                    local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
                    local itemType = GetItemLinkItemType(item.itemlink)
                    local gainorloss = 3
                    local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DISGUISE_EQUIP)
                    if (itemType == ITEMTYPE_COSTUME or itemType == ITEMTYPE_DISGUISE) then
                        --CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
                        CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
                    end
                end
            end

            local item = g_equippedStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)

            if stackCountChange >= 1 then -- STACK COUNT INCREMENTED UP
                local gainorloss = 1
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_GAINEDSTACK)
                local icon, stack = GetItemInfo(bagId, slotId)
                local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                -- CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
                g_equippedStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            elseif stackCountChange < 0 then -- STACK COUNT INCREMENTED DOWN
                unequipHelper = true
                zo_callLater (CA.UpdateUnequipHelperValue, 350)
                local gainorloss = 3
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DISGUISE_UNEQUIP)
                local change = (stackCountChange * -1)
                local endcount = g_equippedStacks[slotId].stack - change
                if endcount <= 0 then -- If the change in stacks resulted in a 0 balance, then we remove the item from the index!
                    if CA.SV.ShowDisguise and not g_itemWasDestroyed and slotId == 10 and (itemType == ITEMTYPE_COSTUME or itemType == ITEMTYPE_DISGUISE) then
                        if IsUnitInCombat("player") then
                            logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DISGUISE_DESTROYED)
                            gainorloss = 2
                        end
                        CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
                    end
                    if CA.SV.ShowDestroy and g_itemWasDestroyed then
                        logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DESTROYED)
                        gainorloss = 2
                        CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss)
                    end
                    g_equippedStacks[slotId] = nil
                else
                    local icon, stack = GetItemInfo(bagId, slotId)
                    local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                    g_equippedStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
                end
            end
        end
    end

    if bagId == BAG_BACKPACK then
        local receivedBy = ""
        if not g_inventoryStacks[slotId] then -- NEW ITEM
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_inventoryStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)
            local gainorloss = 1
            local logPrefix = ""
            local itemId = GetItemId(bagId, slotId)
            if not g_weAreInAStore and CA.SV.Loot then
                zo_callLater(function() CA.PrintInventoryIndexChanges(itemId, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss) end, 75)
            end
            printNextChange = true

        elseif g_inventoryStacks[slotId] then -- EXISTING ITEM
            local item = g_inventoryStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)

            -- Means item was modified (enchanted, etc)
            if stackCountChange == 0 then
                return
            end

            if stackCountChange >= 1 then -- STACK COUNT INCREMENTED UP
                local gainorloss = 1
                local logPrefix = ""
                local icon, stack = GetItemInfo(bagId, slotId)
                local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                local itemId = GetItemId(bagId, slotId)
                if not g_weAreInAStore and CA.SV.Loot then
                    zo_callLater(function() CA.PrintInventoryIndexChanges(itemId, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss) end, 75)
                end
                printNextChange = true
                g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink}
            elseif stackCountChange < 0 then -- STACK COUNT INCREMENTED DOWN
                -- If the item is a container, don't set this value to false, as if we open a container with 1 item and take it, the container will be destroyed and falsely flag this value.
                if itemType ~= ITEMTYPE_CONTAINER then
                    printNextChange = false
                end
                zo_callLater(CA.ResetPrintNextChange, 100)
                local gainorloss = 2
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DESTROYED)
                local change = (stackCountChange * -1)

                if CA.SV.ShowLockpickBreak and g_lockpickBroken then
                    logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_BROKEN)
                    gainorloss = 2
                    CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss)
                end

                local endcount = g_inventoryStacks[slotId].stack - change
                if endcount <= 0 then -- If the change in stacks resulted in a 0 balance, then we remove the item from the index!
                    if CA.SV.ShowDestroy and g_itemWasDestroyed then
                        CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss)
                    end
                    g_inventoryStacks[slotId] = nil
                else
                    local icon, stack = GetItemInfo(bagId, slotId)
                    local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                    g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
                end
            end
        end
    end

    if bagId == BAG_VIRTUAL then
        local itemlink = CA.GetItemLinkFromItemId(slotId)
        local icon = GetItemLinkInfo(itemlink)
        icon = ( CA.SV.LootIcons and icon and icon ~= "" ) and ("|t16:16:" .. icon .. "|t ") or ""
        local receivedBy = ""
        local gainorloss = 1
        --local logPrefix = GetString(SI_MAIL_INBOX_RECEIVED_COLUMN)
        local stack = stackCountChange
        local itemType = GetItemLinkItemType(itemlink)
        local itemQuality = GetItemLinkQuality(itemlink)

        -- Item removed from craft bag
        if stackCountChange < 1 then
            printNextChange = false
            zo_callLater(CA.ResetPrintNextChange, 100)
            return
        end

        if printNextChange == true then
            if not g_weAreInAStore and CA.SV.Loot then
                if not CA.SV.LootOnlyNotable or itemQuality >= ITEM_QUALITY_ARTIFACT or g_weAreInMail then
                    zo_callLater (function() CA.PrintInventoryIndexChanges(slotId, icon, itemlink, itemType, stack or 1, receivedBy, gainorloss) end, 75)
                end
            end
        end
    end

    g_itemWasDestroyed = false
    g_lockpickBroken = false
end

-- Simple posthook into ZOS crafting mode functions, based off MultiCraft, thanks Ayantir!
function CA.CraftModeOverrides()
    -- Set mode on Smithing Station interaction
	local zos_Smithing = SMITHING.SetMode
	SMITHING.SetMode = function(...)
		zos_Smithing(...)
        if GetCraftingInteractionType() == CRAFTING_TYPE_SMITHNG then
            mode = g_smithing:GetMode()
        end
	end

    -- Get SMITHING mode
	g_smithing.GetMode = function()
		return SMITHING.mode
	end

    -- Set mode on Enchanting Station interaction
    local zos_Enchanting = ENCHANTING.SetEnchantingMode
	ENCHANTING.SetEnchantingMode = function(...)
		zos_Enchanting(...)
        if GetCraftingInteractionType() == CRAFTING_TYPE_ENCHANTING then
            mode = g_enchanting:GetMode() 
        end
    end

    -- Get ENCHANTING mode
    g_enchanting.GetMode = function()
		return ENCHANTING:GetEnchantingMode()
	end

    -- NOTE: Alchemy and provisioning don't matter, as the only options are to craft and use materials.
end

function CA.InventoryUpdateCraft(eventCode, bagId, slotId, isNewItem, itemSoundCategory, inventoryUpdateReason, stackCountChange)
    local logPrefixPos = GetString(SI_ITEM_FORMAT_STR_CRAFTED)
    local logPrefixNeg = GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED)

    if GetCraftingInteractionType() == CRAFTING_TYPE_ENCHANTING then
        logPrefixPos = g_enchant_prefix_pos[g_enchanting.GetMode()]
        logPrefixNeg = g_enchant_prefix_neg[g_enchanting.GetMode()]
    end
    if (GetCraftingInteractionType() == CRAFTING_TYPE_BLACKSMITHING or GetCraftingInteractionType() == CRAFTING_TYPE_CLOTHIER or GetCraftingInteractionType() == CRAFTING_TYPE_WOODWORKING) then
        logPrefixPos = g_smithing_prefix_pos[g_smithing.GetMode()]
        logPrefixNeg = g_smithing_prefix_neg[g_smithing.GetMode()]
    end
    local receivedBy = "CRAFT"
    
    -- New Error Checker
    if logPrefixPos == nil then logPrefixPos = GetString(SI_ITEM_FORMAT_STR_CRAFTED) end
    if logPrefixNeg == nil then logPrefixNeg = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DECONSTRUCTED) end

    ---------------------------------- INVENTORY ----------------------------------
    if bagId == BAG_BACKPACK then
        if not g_inventoryStacks[slotId] then -- NEW ITEM
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_inventoryStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)
            local gainorloss = 1
            local logPrefix = logPrefixPos
            CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
        elseif g_inventoryStacks[slotId] and stackCountChange == 0 then -- UPDGRADE
            g_oldItemLink = g_inventoryStacks[slotId].itemlink -- Sends over to LogItem to do an upgrade string!
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_inventoryStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local gainorloss = 1
            local logPrefix = logPrefixPos
            receivedBy = ""
            CA.LogItem(logPrefix, seticon, item.itemlink, itemType, 1, receivedBy, gainorloss)
        elseif g_inventoryStacks[slotId] and stackCountChange ~= 0 then -- EXISTING ITEM
            local item = g_inventoryStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)

            if stackCountChange >= 1 then -- STACK COUNT INCREMENTED UP
               local gainorloss = 1
               local logPrefix = logPrefixPos
               local icon, stack = GetItemInfo(bagId, slotId)
               local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
               CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
               g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink}

            elseif stackCountChange < 0 then -- STACK COUNT INCREMENTED DOWN
                local gainorloss = 2
                local logPrefix = logPrefixNeg

                if (GetCraftingInteractionType() == CRAFTING_TYPE_BLACKSMITHING or GetCraftingInteractionType() == CRAFTING_TYPE_CLOTHIER or GetCraftingInteractionType() == CRAFTING_TYPE_WOODWORKING) and g_smithing.GetMode() == 4 then
                    receivedBy = ""
                    if itemType == ITEMTYPE_ADDITIVE
                    or itemType == ITEMTYPE_ARMOR_BOOSTER
                    or itemType == ITEMTYPE_ARMOR_TRAIT
                    or itemType == ITEMTYPE_BLACKSMITHING_BOOSTER
                    or itemType == ITEMTYPE_BLACKSMITHING_MATERIAL
                    or itemType == ITEMTYPE_CLOTHIER_BOOSTER
                    or itemType == ITEMTYPE_CLOTHIER_MATERIAL
                    or itemType == ITEMTYPE_ENCHANTING_RUNE_ASPECT
                    or itemType == ITEMTYPE_ENCHANTING_RUNE_ESSENCE
                    or itemType == ITEMTYPE_ENCHANTING_RUNE_POTENCY
                    or itemType == ITEMTYPE_ENCHANTMENT_BOOSTER
                    or itemType == ITEMTYPE_INGREDIENT
                    or itemType == ITEMTYPE_POISON_BASE
                    or itemType == ITEMTYPE_POTION_BASE
                    or itemType == ITEMTYPE_REAGENT
                    or itemType == ITEMTYPE_STYLE_MATERIAL
                    or itemType == ITEMTYPE_WEAPON_BOOSTER
                    or itemType == ITEMTYPE_WEAPON_TRAIT
                    or itemType == ITEMTYPE_WOODWORKING_BOOSTER
                    or itemType == ITEMTYPE_WOODWORKING_MATERIAL then
                        logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED)
                    end
                end

                local change = (stackCountChange * -1)
                local endcount = g_inventoryStacks[slotId].stack - change
                if logPrefix ~= GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED) or CA.SV.ShowCraftUse then
                    CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss)
                end
                if endcount <= 0 then -- If the change in stacks resulted in a 0 balance, then we remove the item from the index!
                    g_inventoryStacks[slotId] = nil
                else
                    local icon, stack = GetItemInfo(bagId, slotId)
                    local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                    g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
                end
            end
        end
    end

    ---------------------------------- BANK ----------------------------------
    if bagId == BAG_BANK then
        if not g_bankStacks[slotId] then -- NEW ITEM
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_bankStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_bankStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)
            local gainorloss = 1
            local logPrefix = strformat("<<1>> - <<2>>", logPrefixPos, GetString(SI_INTERACT_OPTION_BANK))
            CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
        elseif g_bankStacks[slotId] and stackCountChange == 0 then -- UPDGRADE
            g_oldItemLink = g_bankStacks[slotId].itemlink -- Sends over to LogItem to do an upgrade string!
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_bankStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_bankStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local gainorloss = 1
            local logPrefix = strformat("<<1>> - <<2>>", logPrefixPos, GetString(SI_INTERACT_OPTION_BANK))
            CA.LogItem(logPrefix, seticon, item.itemlink, itemType, 1, receivedBy, gainorloss)
        elseif g_bankStacks[slotId] and stackCountChange ~= 0 then -- EXISTING ITEM
            local item = g_bankStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)

            if stackCountChange >= 1 then -- STACK COUNT INCREMENTED UP
               local gainorloss = 1
               local logPrefix = strformat("<<1>> - <<2>>", logPrefixPos, GetString(SI_INTERACT_OPTION_BANK))
               local icon, stack = GetItemInfo(bagId, slotId)
               local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
               CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
               g_bankStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink}

            elseif stackCountChange < 0 then -- STACK COUNT INCREMENTED DOWN
                local gainorloss = 2
                local logPrefix = strformat("<<1>> - <<2>>", logPrefixNeg, GetString(SI_INTERACT_OPTION_BANK))

                if (GetCraftingInteractionType() == CRAFTING_TYPE_BLACKSMITHING or GetCraftingInteractionType() == CRAFTING_TYPE_CLOTHIER or GetCraftingInteractionType() == CRAFTING_TYPE_WOODWORKING) and g_smithing.GetMode() == 4 then
                    receivedBy = ""
                    if itemType == ITEMTYPE_ADDITIVE
                    or itemType == ITEMTYPE_ARMOR_BOOSTER
                    or itemType == ITEMTYPE_ARMOR_TRAIT
                    or itemType == ITEMTYPE_BLACKSMITHING_BOOSTER
                    or itemType == ITEMTYPE_BLACKSMITHING_MATERIAL
                    or itemType == ITEMTYPE_CLOTHIER_BOOSTER
                    or itemType == ITEMTYPE_CLOTHIER_MATERIAL
                    or itemType == ITEMTYPE_ENCHANTING_RUNE_ASPECT
                    or itemType == ITEMTYPE_ENCHANTING_RUNE_ESSENCE
                    or itemType == ITEMTYPE_ENCHANTING_RUNE_POTENCY
                    or itemType == ITEMTYPE_ENCHANTMENT_BOOSTER
                    or itemType == ITEMTYPE_INGREDIENT
                    or itemType == ITEMTYPE_POISON_BASE
                    or itemType == ITEMTYPE_POTION_BASE
                    or itemType == ITEMTYPE_REAGENT
                    or itemType == ITEMTYPE_STYLE_MATERIAL
                    or itemType == ITEMTYPE_WEAPON_BOOSTER
                    or itemType == ITEMTYPE_WEAPON_TRAIT
                    or itemType == ITEMTYPE_WOODWORKING_BOOSTER
                    or itemType == ITEMTYPE_WOODWORKING_MATERIAL then
                        logPrefix = strformat("<<1>> - <<2>>", GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED), GetString(SI_INTERACT_OPTION_BANK))
                    end
                end

                local change = (stackCountChange * -1)
                local endcount = g_bankStacks[slotId].stack - change
                if logPrefix ~= strformat("<<1>> - <<2>>", GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED), GetString(SI_INTERACT_OPTION_BANK)) or CA.SV.ShowCraftUse then
                    CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss)
                end
                if endcount <= 0 then -- If the change in stacks resulted in a 0 balance, then we remove the item from the index!
                    g_bankStacks[slotId] = nil
                else
                    local icon, stack = GetItemInfo(bagId, slotId)
                    local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                    g_bankStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
                end
            end
        end
    end
    
    ----------------------- SUBSCRIBER BANK ----------------------------------
    if bagId == BAG_SUBSCRIBER_BANK then
        if not g_banksubStacks[slotId] then -- NEW ITEM
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_banksubStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_banksubStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)
            local gainorloss = 1
            local logPrefix = strformat("<<1>> - <<2>>", logPrefixPos, GetString(SI_INTERACT_OPTION_BANK))
            CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
        elseif g_banksubStacks[slotId] and stackCountChange == 0 then -- UPDGRADE
            g_oldItemLink = g_banksubStacks[slotId].itemlink -- Sends over to LogItem to do an upgrade string!
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_banksubStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_banksubStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local gainorloss = 1
            local logPrefix = strformat("<<1>> - <<2>>", logPrefixPos, GetString(SI_INTERACT_OPTION_BANK))
            CA.LogItem(logPrefix, seticon, item.itemlink, itemType, 1, receivedBy, gainorloss)
        elseif g_banksubStacks[slotId] and stackCountChange ~= 0 then -- EXISTING ITEM
            local item = g_banksubStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)

            if stackCountChange >= 1 then -- STACK COUNT INCREMENTED UP
               local gainorloss = 1
               local logPrefix = strformat("<<1>> - <<2>>", logPrefixPos, GetString(SI_INTERACT_OPTION_BANK))
               local icon, stack = GetItemInfo(bagId, slotId)
               local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
               CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
               g_banksubStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink}

            elseif stackCountChange < 0 then -- STACK COUNT INCREMENTED DOWN
                local gainorloss = 2
                local logPrefix = strformat("<<1>> - <<2>>", logPrefixNeg, GetString(SI_INTERACT_OPTION_BANK))

                if (GetCraftingInteractionType() == CRAFTING_TYPE_BLACKSMITHING or GetCraftingInteractionType() == CRAFTING_TYPE_CLOTHIER or GetCraftingInteractionType() == CRAFTING_TYPE_WOODWORKING) and g_smithing.GetMode() == 4 then
                    receivedBy = ""
                    if itemType == ITEMTYPE_ADDITIVE
                    or itemType == ITEMTYPE_ARMOR_BOOSTER
                    or itemType == ITEMTYPE_ARMOR_TRAIT
                    or itemType == ITEMTYPE_BLACKSMITHING_BOOSTER
                    or itemType == ITEMTYPE_BLACKSMITHING_MATERIAL
                    or itemType == ITEMTYPE_CLOTHIER_BOOSTER
                    or itemType == ITEMTYPE_CLOTHIER_MATERIAL
                    or itemType == ITEMTYPE_ENCHANTING_RUNE_ASPECT
                    or itemType == ITEMTYPE_ENCHANTING_RUNE_ESSENCE
                    or itemType == ITEMTYPE_ENCHANTING_RUNE_POTENCY
                    or itemType == ITEMTYPE_ENCHANTMENT_BOOSTER
                    or itemType == ITEMTYPE_INGREDIENT
                    or itemType == ITEMTYPE_POISON_BASE
                    or itemType == ITEMTYPE_POTION_BASE
                    or itemType == ITEMTYPE_REAGENT
                    or itemType == ITEMTYPE_STYLE_MATERIAL
                    or itemType == ITEMTYPE_WEAPON_BOOSTER
                    or itemType == ITEMTYPE_WEAPON_TRAIT
                    or itemType == ITEMTYPE_WOODWORKING_BOOSTER
                    or itemType == ITEMTYPE_WOODWORKING_MATERIAL then
                        logPrefix = strformat("<<1>> - <<2>>", GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED), GetString(SI_INTERACT_OPTION_BANK))
                    end
                end

                local change = (stackCountChange * -1)
                local endcount = g_banksubStacks[slotId].stack - change
                if logPrefix ~= strformat("<<1>> - <<2>>", GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED), GetString(SI_INTERACT_OPTION_BANK)) or CA.SV.ShowCraftUse then
                    CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss)
                end
                if endcount <= 0 then -- If the change in stacks resulted in a 0 balance, then we remove the item from the index!
                    g_banksubStacks[slotId] = nil
                else
                    local icon, stack = GetItemInfo(bagId, slotId)
                    local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                    g_banksubStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
                end
            end
        end
    end

    ---------------------------------- CRAFTING BAG ----------------------------------
    if bagId == BAG_VIRTUAL then
        local itemlink = CA.GetItemLinkFromItemId(slotId)
        local icon = GetItemLinkInfo(itemlink)
        icon = ( CA.SV.LootIcons and icon and icon ~= "" ) and ("|t16:16:" .. icon .. "|t ") or ""
        local gainorloss = 1
        local logPrefix = logPrefixPos
        local stack = stackCountChange
        local itemType = GetItemLinkItemType(itemlink)

        if stackCountChange < 1 then
            gainorloss = 2
            logPrefix = logPrefixNeg
            stack = stackCountChange * -1
        end

        if (GetCraftingInteractionType() == CRAFTING_TYPE_BLACKSMITHING or GetCraftingInteractionType() == CRAFTING_TYPE_CLOTHIER or GetCraftingInteractionType() == CRAFTING_TYPE_WOODWORKING) and g_smithing.GetMode() == 4 then
            receivedBy = ""
            if itemType == ITEMTYPE_ADDITIVE
            or itemType == ITEMTYPE_ARMOR_BOOSTER
            or itemType == ITEMTYPE_ARMOR_TRAIT
            or itemType == ITEMTYPE_BLACKSMITHING_BOOSTER
            or itemType == ITEMTYPE_BLACKSMITHING_MATERIAL
            or itemType == ITEMTYPE_CLOTHIER_BOOSTER
            or itemType == ITEMTYPE_CLOTHIER_MATERIAL
            or itemType == ITEMTYPE_ENCHANTING_RUNE_ASPECT
            or itemType == ITEMTYPE_ENCHANTING_RUNE_ESSENCE
            or itemType == ITEMTYPE_ENCHANTING_RUNE_POTENCY
            or itemType == ITEMTYPE_ENCHANTMENT_BOOSTER
            or itemType == ITEMTYPE_INGREDIENT
            or itemType == ITEMTYPE_POISON_BASE
            or itemType == ITEMTYPE_POTION_BASE
            or itemType == ITEMTYPE_REAGENT
            or itemType == ITEMTYPE_STYLE_MATERIAL
            or itemType == ITEMTYPE_WEAPON_BOOSTER
            or itemType == ITEMTYPE_WEAPON_TRAIT
            or itemType == ITEMTYPE_WOODWORKING_BOOSTER
            or itemType == ITEMTYPE_WOODWORKING_MATERIAL then
                logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED)
            end
        end

        if logPrefix ~= GetString(SI_LUIE_CA_PREFIX_MESSAGE_USED) or CA.SV.ShowCraftUse then
            CA.LogItem(logPrefix, icon, itemlink, itemType, stack or 1, receivedBy, gainorloss)
        end
    end

    g_itemWasDestroyed = false
    g_lockpickBroken = false
end

function CA.InventoryUpdateBank(eventCode, bagId, slotId, isNewItem, itemSoundCategory, inventoryUpdateReason, stackCountChange)

    ---------------------------------- INVENTORY ----------------------------------
    if bagId == BAG_BACKPACK then
        local receivedBy = ""
        if not g_inventoryStacks[slotId] then -- NEW ITEM
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_inventoryStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)
            local gainorloss = 1
            local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_WITHDREW)
            if InventoryOn then
                CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
                InventoryOn = false
            end
        --[[elseif g_inventoryStacks[slotId] and stackCountChange == 0 then -- UPDGRADE
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_inventoryStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local gainorloss = 1
            local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_UPGRADED)
            CA.LogItem(logPrefix, seticon, item.itemlink, itemType, 1, receivedBy, gainorloss) -- Shouldn't need this for anything, but just in case. ]]-- Shouldn't be neccesary
        elseif g_inventoryStacks[slotId] and stackCountChange ~= 0 then -- EXISTING ITEM
            local item = g_inventoryStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)

            if stackCountChange >= 1 then -- STACK COUNT INCREMENTED UP
                local gainorloss = 1
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_WITHDREW)
                local icon, stack = GetItemInfo(bagId, slotId)
                local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                if InventoryOn then
                    CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
                    InventoryOn = false
                end
               g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink}

            elseif stackCountChange < 0 then -- STACK COUNT INCREMENTED DOWN
                local gainorloss = 2
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DESTROYED)
                local change = (stackCountChange * -1)
                local endcount = g_inventoryStacks[slotId].stack - change
                if CA.SV.ShowDestroy and g_itemWasDestroyed then
                    CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss)
                end
                -- If the change in stacks resulted in a 0 balance, then we remove the item from the index
                if endcount <= 0 then
                    -- if InventoryOn then CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss) InventoryOn = false end
                    g_inventoryStacks[slotId] = nil
                else
                    local icon, stack = GetItemInfo(bagId, slotId)
                    local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                    g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
                end
            end
        end
        if not g_itemWasDestroyed then
            BankOn = true
        end
        if not g_itemWasDestroyed then
            InventoryOn = false
        end
        if not g_itemWasDestroyed then
            zo_callLater(CA.BankFixer, 50)
        end
    end

    ---------------------------------- BANK ----------------------------------
    if bagId == BAG_BANK then
        local receivedBy = ""
        if not g_bankStacks[slotId] then -- NEW ITEM
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_bankStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_bankStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)
            local gainorloss = 2
            local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DEPOSITED)
            if BankOn then
                CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
                BankOn = false
            end
        --[[elseif g_bankStacks[slotId] and stackCountChange == 0 then -- UPDGRADE
            g_oldItemLink = g_bankStacks[slotId].itemlink -- Sends over to LogItem to do an upgrade string!
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_bankStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_bankStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local gainorloss = 1
            local logPrefix = "Upgraded - Bank"]]--
        elseif g_bankStacks[slotId] and stackCountChange ~= 0 then -- EXISTING ITEM
            local item = g_bankStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)

            if stackCountChange >= 1 then -- STACK COUNT INCREMENTED UP
                local gainorloss = 2
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DEPOSITED)
                local icon, stack = GetItemInfo(bagId, slotId)
                local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                if BankOn then
                    CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
                    BankOn = false
                end
                g_bankStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink}

            elseif stackCountChange < 0 then -- STACK COUNT INCREMENTED DOWN
                local gainorloss = 2
                local logPrefix = strformat("<<1>> - <<2>>", GetString(SI_LUIE_CA_PREFIX_MESSAGE_DESTROYED), GetString(SI_INTERACT_OPTION_BANK) )
                local change = (stackCountChange * -1)
                local endcount = g_bankStacks[slotId].stack - change
                if CA.SV.ShowDestroy and g_itemWasDestroyed then
                    CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss)
                end
                -- If the change in stacks resulted in a 0 balance, then we remove the item from the index!
                if endcount <= 0 then
                    -- if BankOn then CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss) BankOn = false end
                    g_bankStacks[slotId] = nil
                else
                    local icon, stack = GetItemInfo(bagId, slotId)
                    local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                    g_bankStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
                end
            end
            if not g_itemWasDestroyed then
                InventoryOn = true
            end
            if not g_itemWasDestroyed then
                BankOn = false
            end
            if not g_itemWasDestroyed then
                zo_callLater(CA.BankFixer, 50)
            end
        end
    end

    ---------------------------------- SUBSCRIBER BANK ----------------------------------
    if bagId == BAG_SUBSCRIBER_BANK then
        local receivedBy = ""
        if not g_banksubStacks[slotId] then -- NEW ITEM
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_banksubStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_banksubStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)
            local gainorloss = 2
            local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DEPOSITED)
            if BankOn then
                CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
                BankOn = false
            end
        --[[elseif g_banksubStacks[slotId] and stackCountChange == 0 then -- UPDGRADE
            g_oldItemLink = g_banksubStacks[slotId].itemlink -- Sends over to LogItem to do an upgrade string!
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_banksubStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_banksubStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local gainorloss = 1
            local logPrefix = "Upgraded - Bank"]]--
        elseif g_banksubStacks[slotId] and stackCountChange ~= 0 then -- EXISTING ITEM
            local item = g_banksubStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)

            if stackCountChange >= 1 then -- STACK COUNT INCREMENTED UP
                local gainorloss = 2
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DEPOSITED)
                local icon, stack = GetItemInfo(bagId, slotId)
                local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                if BankOn then
                    CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
                    BankOn = false
                end
                g_banksubStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink}

            elseif stackCountChange < 0 then -- STACK COUNT INCREMENTED DOWN
                local gainorloss = 2
                local logPrefix = strformat("<<1>> - <<2>>", GetString(SI_LUIE_CA_PREFIX_MESSAGE_DESTROYED), GetString(SI_INTERACT_OPTION_BANK) )
                local change = (stackCountChange * -1)
                local endcount = g_banksubStacks[slotId].stack - change
                if CA.SV.ShowDestroy and g_itemWasDestroyed then
                    CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss)
                end
                -- If the change in stacks resulted in a 0 balance, then we remove the item from the index!
                if endcount <= 0 then
                    -- if BankOn then CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss) BankOn = false end
                    g_banksubStacks[slotId] = nil
                else
                    local icon, stack = GetItemInfo(bagId, slotId)
                    local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                    g_banksubStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
                end
            end
            if not g_itemWasDestroyed then
                InventoryOn = true
            end
            if not g_itemWasDestroyed then
                BankOn = false
            end
            if not g_itemWasDestroyed then
                zo_callLater(CA.BankFixer, 50)
            end
        end
    end
    
    --[[
    POSSIBLY ADD MORE SUPPORT HERE FOR CRAFT BAG EXTENDED, RIGHT NOW STOWING OR RETRIEVING MATERIALS TO PLAYER BAG SHOWS DEPOSIT/WITHDRAW MESSAGE
    --]]

    if bagId == BAG_VIRTUAL then
        local itemlink = CA.GetItemLinkFromItemId(slotId)
        local icon = GetItemLinkInfo(itemlink)
        icon = ( CA.SV.LootIcons and icon and icon ~= "" ) and ("|t16:16:" .. icon .. "|t ") or ""
        local receivedBy = ""
        local gainorloss = 1
        local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_WITHDREW)
        local stack = stackCountChange
        local itemType = GetItemLinkItemType(itemlink)

        if stackCountChange < 1 then
            gainorloss = 2
            logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DEPOSITED)
            stack = stackCountChange * -1
        end

        CA.LogItem(logPrefix, icon, itemlink, itemType, stack or 1, receivedBy, gainorloss)
    end

    g_itemWasDestroyed = false
    g_lockpickBroken = false
end

function CA.InventoryUpdateGuildBank(eventCode, bagId, slotId, isNewItem, itemSoundCategory, inventoryUpdateReason, stackCountChange)
    ---------------------------------- INVENTORY ----------------------------------
    if bagId == BAG_BACKPACK then
        local receivedBy = ""
        if not g_inventoryStacks[slotId] then -- NEW ITEM
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_inventoryStacks[slotId]
            g_guildBankCarryIcon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            g_guildBankCarryGainorloss = 1
            g_guildBankCarryLogPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_WITHDREW)
            g_guildBankCarryReceivedBy = ""
            g_guildBankCarryItemLink = item.itemlink
            g_guildBankCarryStackCount = stackCountChange or 1
            g_guildBankCarryItemType = GetItemLinkItemType(item.itemlink)
        --[[elseif g_inventoryStacks[slotId] and stackCountChange == 0 then -- UPDGRADE
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_inventoryStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local gainorloss = 1
            local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_UPGRADED)
            CA.LogItem(logPrefix, seticon, item.itemlink, itemType, 1, receivedBy, gainorloss) -- Shouldn't need this for anything, but just in case. ]]-- Shouldn't be neccesary
        elseif g_inventoryStacks[slotId] and stackCountChange ~= 0 then -- EXISTING ITEM
            local item = g_inventoryStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""

            if stackCountChange >= 1 then -- STACK COUNT INCREMENTED UP
               local icon, stack = GetItemInfo(bagId, slotId)
               local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
               g_guildBankCarryIcon = seticon
               g_guildBankCarryGainorloss = 1
               g_guildBankCarryLogPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_WITHDREW)
               g_guildBankCarryReceivedBy = ""
               g_guildBankCarryItemLink = item.itemlink
               g_guildBankCarryStackCount = stackCountChange or 1
               g_guildBankCarryItemType = GetItemLinkItemType(item.itemlink)
               g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink}

            elseif stackCountChange < 0 then -- STACK COUNT INCREMENTED DOWN
                local gainorloss = 2
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DESTROYED)
                local change = (stackCountChange * -1)
                local endcount = g_inventoryStacks[slotId].stack - change
                g_guildBankCarryIcon = seticon
                g_guildBankCarryGainorloss = 2
                g_guildBankCarryLogPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DEPOSITED)
                g_guildBankCarryReceivedBy = ""
                g_guildBankCarryItemLink = item.itemlink
                g_guildBankCarryStackCount = change or 1
                g_guildBankCarryItemType = GetItemLinkItemType(item.itemlink)
                if CA.SV.ShowDestroy and g_itemWasDestroyed
                    then CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss)
                end
                if endcount <= 0 then -- If the change in stacks resulted in a 0 balance, then we remove the item from the index
                    g_inventoryStacks[slotId] = nil
                else
                    local icon, stack = GetItemInfo(bagId, slotId)
                    local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                    g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
                end
            end
        end
    end

    ---------------------------------- CRAFTING BAG ----------------------------------
    if bagId == BAG_VIRTUAL then
        local receivedBy = ""
        local gainorloss = 1
        local logPrefix = GetString(SI_MAIL_INBOX_RECEIVED_COLUMN)
        local itemlink = CA.GetItemLinkFromItemId(slotId)
        local icon = GetItemLinkInfo(itemlink)
        local seticon = ( CA.SV.LootIcons and icon and icon ~= "" ) and ("|t16:16:" .. icon .. "|t ") or ""

        g_guildBankCarryIcon = seticon
        g_guildBankCarryGainorloss = 1
        g_guildBankCarryLogPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_WITHDREW)
        g_guildBankCarryReceivedBy = ""
        g_guildBankCarryItemLink = itemlink
        g_guildBankCarryStackCount = stackCountChange or 1
    end

    g_itemWasDestroyed = false
    g_lockpickBroken = false
end

function CA.InventoryUpdateFence(eventCode, bagId, slotId, isNewItem, itemSoundCategory, inventoryUpdateReason, stackCountChange)
    ---------------------------------- INVENTORY ----------------------------------
    if bagId == BAG_BACKPACK then
        local receivedBy = ""
        if not g_inventoryStacks[slotId] and stackCountChange > 0 then -- NEW ITEM
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_inventoryStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)
            local gainorloss = 1
            local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_LAUNDERED)
            g_launderCheck = true
            CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
        elseif g_inventoryStacks[slotId] and stackCountChange == 0 then -- UPDGRADE
            local icon, stack = GetItemInfo(bagId, slotId)
            local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
            g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
            local item = g_inventoryStacks[slotId]
            local itemType = GetItemLinkItemType(item.itemlink)
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local gainorloss = 1
            local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_LAUNDERED)
            g_launderCheck = true
            if itemType == ITEMTYPE_WEAPON or itemType == ITEMTYPE_ARMOR or itemType == ITEMTYPE_JEWELRY then
                CA.LogItem(logPrefix, seticon, item.itemlink, itemType, 1, receivedBy, gainorloss)
            end
        elseif g_inventoryStacks[slotId] and stackCountChange ~= 0 then -- EXISTING ITEM
            local item = g_inventoryStacks[slotId]
            local seticon = ( CA.SV.LootIcons and item.icon and item.icon ~= "" ) and ("|t16:16:" .. item.icon .. "|t ") or ""
            local itemType = GetItemLinkItemType(item.itemlink)

            if stackCountChange >= 1 then -- STACK COUNT INCREMENTED UP
                local gainorloss = 1
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_LAUNDERED)
                local icon, stack = GetItemInfo(bagId, slotId)
                local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                g_launderCheck = true
                CA.LogItem(logPrefix, seticon, item.itemlink, itemType, stackCountChange or 1, receivedBy, gainorloss)
                g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink}
            elseif stackCountChange < 0 then -- STACK COUNT INCREMENTED DOWN
                local gainorloss = 2
                local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_DESTROYED)
                local change = (stackCountChange * -1)
                local endcount = g_inventoryStacks[slotId].stack - change
                --CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss)
                -- If the change in stacks resulted in a 0 balance, then we remove the item from the index!
                if endcount <= 0 then
                    if CA.SV.ShowDestroy and g_itemWasDestroyed then
                        CA.LogItem(logPrefix, seticon, item.itemlink, itemType, change or 1, receivedBy, gainorloss)
                    end
                    g_inventoryStacks[slotId] = nil
                else
                    local icon, stack = GetItemInfo(bagId, slotId)
                    local bagitemlink = GetItemLink(bagId, slotId, LINK_STYLE_DEFAULT)
                    g_inventoryStacks[slotId] = { icon=icon, stack=stack, itemlink=bagitemlink }
                end
            end
        end
    end

    ---------------------------------- CRAFTING BAG ----------------------------------
    if bagId == BAG_VIRTUAL then
        local itemlink = CA.GetItemLinkFromItemId(slotId)
        local icon = GetItemLinkInfo(itemlink)
        icon = ( CA.SV.LootIcons and icon and icon ~= "" ) and ("|t16:16:" .. icon .. "|t ") or ""
        local receivedBy = ""
        local gainorloss = 1
        local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_LAUNDERED)
        local stack = stackCountChange
        local itemType = GetItemLinkItemType(itemlink)

        -- Laundering won't ever remove things from the bag, so ignore
        if stackCountChange < 1 then
            return
        end

        g_launderCheck = true
        CA.LogItem(logPrefix, icon, itemlink, itemType, stack or 1, receivedBy, gainorloss)
    end

    g_itemWasDestroyed = false
    g_lockpickBroken = false
    g_comboString = ""
    g_launderCheck = false
end

-- Makes it so bank withdraw/deposit events only occur when we can confirm the item is crossing over.
function CA.BankFixer()
    InventoryOn = false
    BankOn = false
end

function CA.JusticeStealRemove(eventCode)
    local ConfiscateMessage = GetString(SI_LUIE_CA_JUSTICE_CONFISCATED_MSG)
    if CA.SV.MiscConfiscate and eventCode == 131555 then
        ConfiscateMessage = GetString(SI_LUIE_CA_JUSTICE_CONFISCATED_BOUNTY_ITEMS_MSG)
    end

    if g_stealString == "" then
        return
    end

    if CA.SV.MiscConfiscate then
        printToChat(ConfiscateMessage)
    end

    printToChat(g_stealString)
    g_stealString = ""
    ConfiscateMessage = (GetString(SI_LUIE_CA_JUSTICE_CONFISCATED_MSG))

    zo_callLater(CA.JusticeRemovePrint, 50)
end

function CA.JusticeRemovePrint()
    -- PART 1 -- INVENTORY
    if CA.SV.ShowConfiscate then
        local bagsize = GetBagSize(1)

        for i = 1,bagsize do
            local icon, stack = GetItemInfo(1, i)
            local bagitemlink = GetItemLink(1, i, LINK_STYLE_DEFAULT)
            if bagitemlink ~= "" then
                g_JusticeStacks[i] = {icon=icon, stack=stack, itemlink=bagitemlink}
            end
        end

        for i = 1,bagsize do
            local inventoryitem = g_inventoryStacks[i]
            local justiceitem = g_JusticeStacks[i]
            if inventoryitem ~= nil then
                if justiceitem == nil then
                    local seticon = ( CA.SV.LootIcons and inventoryitem.icon and inventoryitem.icon ~= "" ) and ("|t16:16:" .. inventoryitem.icon .. "|t ") or ""
                    local itemType = GetItemLinkItemType(inventoryitem.itemlink)
                    local stack = inventoryitem.stack
                    local receivedBy = ""
                    local gainorloss = 2
                    local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_CONFISCATED)
                    if CA.SV.ShowConfiscate then
                        CA.LogItem(logPrefix, seticon, inventoryitem.itemlink, itemType, stack or 1, receivedBy, gainorloss)
                    end
                end
            end
        end

        -- Reset Justice Stacks to reuse for equipped
        g_JusticeStacks = {}

        -- PART 2 -- EQUIPPED
        bagsize = GetBagSize(0)

        -- We have to determine the currently active weapon, and swap the slots because of some wierd interaction when your equipped weapon is confiscated.
        -- This works even if the other weapon slot is empty or both slots have a stolen weapon.
        local weaponInfo = GetActiveWeaponPairInfo()

        -- Save weapons
        local W1 = g_equippedStacks[4]
        local W2 = g_equippedStacks[5]
        local W3 = g_equippedStacks[20]
        local W4 = g_equippedStacks[21]

        -- Swap weapons depending on currently equipped pair
        if WeaponInfo == 1 then
            g_equippedStacks[4] = W3
            g_equippedStacks[5] = W4
        end

        if WeaponInfo == 2 then
            g_equippedStacks[20] = W1
            g_equippedStacks[21] = W2
        end

        for i = 1,bagsize do
            local icon, stack = GetItemInfo(0, i)
            local bagitemlink = GetItemLink(0, i, LINK_STYLE_DEFAULT)
            if bagitemlink ~= "" then
                g_JusticeStacks[i] = {icon=icon, stack=stack, itemlink=bagitemlink}
            end
        end

        for i = 1,bagsize do
            local inventoryitem = g_equippedStacks[i]
            local justiceitem = g_JusticeStacks[i]
            if inventoryitem ~= nil then
                if justiceitem == nil then
                    local seticon = ( CA.SV.LootIcons and inventoryitem.icon and inventoryitem.icon ~= "" ) and ("|t16:16:" .. inventoryitem.icon .. "|t ") or ""
                    local itemType = GetItemLinkItemType(inventoryitem.itemlink)
                    local stack = inventoryitem.stack
                    local receivedBy = ""
                    local gainorloss = 2
                    local logPrefix = GetString(SI_LUIE_CA_PREFIX_MESSAGE_CONFISCATEDEQUIPPED)
                    if CA.SV.ShowConfiscate then
                        CA.LogItem(logPrefix, seticon, inventoryitem.itemlink, itemType, stack or 1, receivedBy, gainorloss)
                    end
                end
            end
        end
    end

    g_JusticeStacks = {} -- Clear the Justice Item Stacks since we don't need this for anything else!
    g_equippedStacks = {}
    g_inventoryStacks = {}
    CA.IndexEquipped()
    CA.IndexInventory() -- Reindex the inventory with the correct values!
end

--[[ I would have liked to have this optional feature, but it gets out of snyc sometimes so kind of ruins it
function CA.DuelCountdown(eventCode, startTimeMS)
    local duelcounter = 6

    local function DuelCountdown()
        duelcounter = duelcounter - 1
        printToChat(strformat(GetString(SI_DUELING_COUNTDOWN_CSA), duelcounter))
    end

    printToChat(strformat(GetString(SI_DUELING_COUNTDOWN_CSA), duelcounter))
    zo_callLater(DuelCountdown, 1000)
    zo_callLater(DuelCountdown, 2000)
    zo_callLater(DuelCountdown, 3000)
    zo_callLater(DuelCountdown, 4000)
    zo_callLater(DuelCountdown, 5000)
end
]]--

function CA.DuelInviteReceived(eventCode, inviterCharacterName, inviterDisplayName)
    local characterNameLink = ZO_LinkHandler_CreateCharacterLink(inviterCharacterName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(inviterDisplayName)
    local displayBothString = ( strformat("<<1>><<2>>", inviterCharacterName, inviterDisplayName) )
    local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, inviterDisplayName)

    if CA.SV.ChatPlayerDisplayOptions == 1 then
        printToChat(strformat(GetString(SI_DUEL_INVITE_RECEIVED), displayNameLink))
    end
    if CA.SV.ChatPlayerDisplayOptions == 2 then
        printToChat(strformat(GetString(SI_DUEL_INVITE_RECEIVED), characterNameLink))
    end
    if CA.SV.ChatPlayerDisplayOptions == 3 then
        printToChat(strformat(GetString(SI_DUEL_INVITE_RECEIVED), displayBoth))
    end
end

function CA.DuelInviteAccepted(eventCode)
    printToChat(GetString(SI_DUEL_INVITE_ACCEPTED))
end

function CA.DuelInviteSent(eventCode, inviteeCharacterName, inviteeDisplayName)
    local characterNameLink = ZO_LinkHandler_CreateCharacterLink(inviteeCharacterName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(inviteeDisplayName)
    local displayBothString = ( strformat("<<1>><<2>>", inviteeCharacterName, inviteeDisplayName) )
    local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, inviteeDisplayName)

    if CA.SV.ChatPlayerDisplayOptions == 1 then
        printToChat(strformat(GetString(SI_DUEL_INVITE_SENT), displayNameLink))
    end
    if CA.SV.ChatPlayerDisplayOptions == 2 then
        printToChat(strformat(GetString(SI_DUEL_INVITE_SENT), characterNameLink))
    end
    if CA.SV.ChatPlayerDisplayOptions == 3 then
        printToChat(strformat(GetString(SI_DUEL_INVITE_SENT), displayBoth))
    end
end

function CA.DuelFinished(eventCode, duelResult, wasLocalPlayersResult, opponentCharacterName, opponentDisplayName, opponentAlliance, opponentGender, opponentClassId, opponentRaceId)
    local resultName

    if wasLocalPlayersResult then -- Possibly replace this with just a simple string assignment of "You"
        local characterNameLink = ZO_LinkHandler_CreateCharacterLink(g_playerName)
        local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(g_playerDisplayName)
        local displayBothString = ( strformat("<<1>><<2>>", g_playerName, g_playerDisplayName) )
        local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, g_playerDisplayName)

        if CA.SV.ChatPlayerDisplayOptions == 1 then
            resultName = displayNameLink
        end
        if CA.SV.ChatPlayerDisplayOptions == 2 then
            resultName = characterNameLink
        end
        if CA.SV.ChatPlayerDisplayOptions == 3 then
            resultName = displayBoth
        end
    else
        local characterNameLink = ZO_LinkHandler_CreateCharacterLink(opponentCharacterName)
        local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(opponentDisplayName)
        local displayBothString = ( strformat("<<1>><<2>>", opponentCharacterName, opponentDisplayName) )
        local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, opponentDisplayName)

        if CA.SV.ChatPlayerDisplayOptions == 1 then
            resultName = displayNameLink
        end
        if CA.SV.ChatPlayerDisplayOptions == 2 then
            resultName = characterNameLink
        end
        if CA.SV.ChatPlayerDisplayOptions == 3 then
            resultName = displayBoth
        end
    end

    if duelResult == 0 then
        printToChat(strformat(GetString(SI_DUELRESULT0), resultName))
    else
        printToChat(strformat(GetString(SI_DUELRESULT1), resultName))
    end
end

function CA.DuelInviteFailed(eventCode, reason, targetCharacterName, targetDisplayName)
    local reasonName
    local characterNameLink = ZO_LinkHandler_CreateCharacterLink(targetCharacterName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(targetDisplayName)
    local displayBothString = ( strformat("<<1>><<2>>", targetCharacterName, targetDisplayName) )
    local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, targetDisplayName)

    if CA.SV.ChatPlayerDisplayOptions == 1 then
        reasonName = displayNameLink
    end
    if CA.SV.ChatPlayerDisplayOptions == 2 then
        reasonName = characterNameLink
    end
    if CA.SV.ChatPlayerDisplayOptions == 3 then
        reasonName = displayBoth
    end

    printToChat(strformat(GetString("SI_DUELINVITEFAILREASON", reason), reasonName))
end

function CA.DuelInviteDeclined(eventCode)
    printToChat(GetString(SI_DUEL_INVITE_DECLINED))
end

function CA.DuelInviteCanceled(eventCode)
    printToChat(GetString(SI_DUEL_INVITE_CANCELED))
end

function CA.DuelNearBoundary(eventCode, isInWarningArea)
    if isInWarningArea then
        printToChat(GetString(SI_DUELING_NEAR_BOUNDARY_CSA))
    end
end

function CA.DuelStarted(eventCode)
    
    local formattedIcon = zo_iconFormat("EsoUI/Art/HUD/HUD_Countdown_Badge_Dueling.dds", 16, 16)
    
    if CA.SV.MiscDuelStartOptions == 1 then
        printToChat(strformat(GetString(SI_LUIE_CA_DUEL_STARTED_WITH_ICON), formattedIcon))
    elseif CA.SV.MiscDuelStartOptions == 2 then
        printToChat(GetString(SI_LUIE_CA_DUEL_STARTED))
    elseif CA.SV.MiscDuelStartOptions == 3 then
        printToChat(strformat("<<1>>", formattedIcon))
    else
        return
    end
    
end

function CA.DisguiseState(eventCode, unitTag, disguiseState)
    if CA.SV.MiscDisguiseAlert and disguiseState == DISGUISE_STATE_DANGER then
        if CA.SV.MiscDisguiseOption == 1 or CA.SV.MiscDisguiseOption == 3 then
            printToChat(GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_DANGER))
        end
        if CA.SV.MiscDisguiseOption == 2 or CA.SV.MiscDisguiseOption == 3 then
            local messageParams = CENTER_SCREEN_ANNOUNCE:CreateMessageParams(CSA_CATEGORY_MAJOR_TEXT, SOUNDS.GROUP_ELECTION_REQUESTED)
            messageParams:SetText(DisguiseAlertColorize:Colorize(GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_DANGER)))
            messageParams:SetCSAType(CENTER_SCREEN_ANNOUNCE_TYPE_COUNTDOWN)
            CENTER_SCREEN_ANNOUNCE:AddMessageWithParams(messageParams)
        end
    end

    if CA.SV.MiscDisguiseAlert and disguiseState == DISGUISE_STATE_SUSPICIOUS then
        if CA.SV.MiscDisguiseOption == 1 or CA.SV.MiscDisguiseOption == 3 then
            printToChat(GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_SUSPICIOUS))
        end
        if CA.SV.MiscDisguiseOption == 2 or CA.SV.MiscDisguiseOption == 3 then
            local messageParams = CENTER_SCREEN_ANNOUNCE:CreateMessageParams(CSA_CATEGORY_MAJOR_TEXT, SOUNDS.GROUP_ELECTION_REQUESTED)
            messageParams:SetText(DisguiseAlertColorize:Colorize(GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_SUSPICIOUS)))
            messageParams:SetCSAType(CENTER_SCREEN_ANNOUNCE_TYPE_COUNTDOWN)
            CENTER_SCREEN_ANNOUNCE:AddMessageWithParams(messageParams)
        end
    end

    -- If we're still disguised and g_disguiseState is true then don't waste resources and end the function
    if g_disguiseState == 1 and ( disguiseState == DISGUISE_STATE_DISGUISED or disguiseState == DISGUISE_STATE_DANGER or disguiseState == DISGUISE_STATE_SUSPICIOUS or disguiseState == DISGUISE_STATE_DISCOVERED ) then
        return
    end

    if g_disguiseState == 1 and (disguiseState == DISGUISE_STATE_NONE) then
        if CA.SV.MiscDisguiseOption == 1 or CA.SV.MiscDisguiseOption == 3 then
            printToChat(strformat("<<1>> <<2>>", GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_NONE), E.DisguiseIcons[g_currentDisguise].description))
        end
        if CA.SV.MiscDisguiseOption == 2 or CA.SV.MiscDisguiseOption == 3 then
            local messageParams = CENTER_SCREEN_ANNOUNCE:CreateMessageParams(CSA_CATEGORY_SMALL_TEXT)
            messageParams:SetText(strformat("<<1>> <<2>>", GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_NONE), E.DisguiseIcons[g_currentDisguise].description))
            messageParams:SetCSAType(CENTER_SCREEN_ANNOUNCE_TYPE_COUNTDOWN)
            CENTER_SCREEN_ANNOUNCE:AddMessageWithParams(messageParams)
        end
    end

    if g_disguiseState == 0 and ( disguiseState == DISGUISE_STATE_DISGUISED or disguiseState == DISGUISE_STATE_DANGER or disguiseState == DISGUISE_STATE_SUSPICIOUS or disguiseState == DISGUISE_STATE_DISCOVERED ) then
        g_currentDisguise = GetItemId(0, 10) or 0
        if CA.SV.MiscDisguiseOption == 1 or CA.SV.MiscDisguiseOption == 3 then
            printToChat(strformat("<<1>> <<2>>", GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_DISGUISED), E.DisguiseIcons[g_currentDisguise].description))
        end
        if CA.SV.MiscDisguiseOption == 2 or CA.SV.MiscDisguiseOption == 3 then
            local messageParams = CENTER_SCREEN_ANNOUNCE:CreateMessageParams(CSA_CATEGORY_SMALL_TEXT)
            messageParams:SetText(strformat("<<1>> <<2>>", GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_DISGUISED), E.DisguiseIcons[g_currentDisguise].description))
            messageParams:SetCSAType(CENTER_SCREEN_ANNOUNCE_TYPE_COUNTDOWN)
            CENTER_SCREEN_ANNOUNCE:AddMessageWithParams(messageParams)
        end
    end

    g_disguiseState = GetUnitDisguiseState("player")

    if g_disguiseState > 0 then
        g_disguiseState = 1
    end
end

function CA.OnPlayerActivated(eventCode, initial)
    -- Displays disguise status change when zoning, if enabled
    if g_disguiseState == 0 then
        g_disguiseState = GetUnitDisguiseState("player")
        if g_disguiseState == 0 then
            return
        elseif g_disguiseState ~= 0 then
            g_disguiseState = 1
            g_currentDisguise = GetItemId(0, 10) or 0
            if CA.SV.MiscDisguiseOption == 1 or CA.SV.MiscDisguiseOption == 3 then
                printToChat(strformat("<<1>> <<2>>", GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_DISGUISED), E.DisguiseIcons[g_currentDisguise].description))
            end
            if CA.SV.MiscDisguiseOption == 2 or CA.SV.MiscDisguiseOption == 3 then
                local messageParams = CENTER_SCREEN_ANNOUNCE:CreateMessageParams(CSA_CATEGORY_SMALL_TEXT)
                messageParams:SetText(strformat("<<1>> <<2>>", GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_DISGUISED), E.DisguiseIcons[g_currentDisguise].description))
                messageParams:SetCSAType(CENTER_SCREEN_ANNOUNCE_TYPE_COUNTDOWN)
                CENTER_SCREEN_ANNOUNCE:AddMessageWithParams(messageParams)
            end
            return
        end
    elseif g_disguiseState == 1 then
        g_disguiseState = GetUnitDisguiseState("player")
        if g_disguiseState == 0 then
            if CA.SV.MiscDisguiseOption == 1 or CA.SV.MiscDisguiseOption == 3 then
                printToChat(strformat("<<1>> <<2>>", GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_NONE), E.DisguiseIcons[g_currentDisguise].description))
            end
            if CA.SV.MiscDisguiseOption == 2 or CA.SV.MiscDisguiseOption == 3 then
                local messageParams = CENTER_SCREEN_ANNOUNCE:CreateMessageParams(CSA_CATEGORY_SMALL_TEXT)
                messageParams:SetText(strformat("<<1>> <<2>>", GetString(SI_LUIE_CA_JUSTICE_DISGUISE_STATE_NONE), E.DisguiseIcons[g_currentDisguise].description))
                messageParams:SetCSAType(CENTER_SCREEN_ANNOUNCE_TYPE_COUNTDOWN)
                CENTER_SCREEN_ANNOUNCE:AddMessageWithParams(messageParams)
            end
            return
        elseif g_disguiseState ~= 0 then
            g_disguiseState = 1
            g_currentDisguise = GetItemId(0, 10) or 0
            return
        end
    end
end


function CA.MaraOffer(eventCode, targetCharacterName, isSender, targetDisplayName)
    local maraName
    local characterNameLink = ZO_LinkHandler_CreateCharacterLink(targetCharacterName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(targetDisplayName)
    local displayBothString = ( strformat("<<1>><<2>>", targetCharacterName, targetDisplayName) )
    local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, targetDisplayName)

    if CA.SV.ChatPlayerDisplayOptions == 1 then
        maraName = displayNameLink
    end
    if CA.SV.ChatPlayerDisplayOptions == 2 then
        maraName = characterNameLink
    end
    if CA.SV.ChatPlayerDisplayOptions == 3 then
        maraName = displayBoth
    end

    if isSender then
        printToChat(strformat(GetString(SI_PLAYER_TO_PLAYER_OUTGOING_RITUAL_OF_MARA), maraName))
    else
        printToChat(strformat(GetString(SI_PLAYER_TO_PLAYER_INCOMING_RITUAL_OF_MARA), maraName))
    end
end

function CA.MaraResult (eventCode, reason, targetCharacterName, targetDisplayName)
    local maraName
    local characterNameLink = ZO_LinkHandler_CreateCharacterLink(targetCharacterName)
    local displayNameLink = ZO_LinkHandler_CreateDisplayNameLink(targetDisplayName)
    local displayBothString = ( strformat("<<1>><<2>>", targetCharacterName, targetDisplayName) )
    local displayBoth = ZO_LinkHandler_CreateLink(displayBothString, nil, DISPLAY_NAME_LINK_TYPE, targetDisplayName)

    if CA.SV.ChatPlayerDisplayOptions == 1 then
        maraName = displayNameLink
    end
    if CA.SV.ChatPlayerDisplayOptions == 2 then
        maraName = characterNameLink
    end
    if CA.SV.ChatPlayerDisplayOptions == 3 then
        maraName = displayBoth
    end

    printToChat(strformat(GetString("SI_PLEDGEOFMARARESULT", reason), maraName))
end

function CA.NewCollectible(eventCode, collectibleId)
    local bracket1
    local bracket2
    local message

    if CA.SV.CollectibleBracketOptions == 1 then
        bracket1 = "["
        bracket2 = "]"
    elseif CA.SV.CollectibleBracketOptions == 2 then
        bracket1 = "("
        bracket2 = ")"
    elseif CA.SV.CollectibleBracketOptions == 3 then
        bracket1 = ""
        bracket2 = " -"
    elseif CA.SV.CollectibleBracketOptions == 4 then
        bracket1 = ""
        bracket2 = ""
    end

    local _, _, icon, _, _, _, _, categoryType = GetCollectibleInfo(collectibleId)
    local link = GetCollectibleLink(collectibleId, LINK_STYLE_BRACKETS)
    categoryType = GetString("SI_COLLECTIBLECATEGORYTYPE", categoryType)

    if CA.SV.CollectibleIcon then
        icon = strfmt("|t16:16:%s|t ", icon)
    else
        icon = ("")
    end
    
    if CA.SV.CollectibleAbbreviate then
        message = CollectibleColorize:Colorize(strfmt("%s%s %s%s %s%s", bracket1, categoryType, CA.SV.CollectibleAbbreviatePrefix, bracket2, icon, link))
    elseif not CA.SV.CollectibleAbbreviate and CA.SV.CollectibleBracketOptions ~=3 then
        message = CollectibleColorize:Colorize(strfmt("%s %s%s %s%s%s", CA.SV.CollectiblePrefix, icon, link, bracket1, categoryType, bracket2))
    else
        message = CollectibleColorize:Colorize(strfmt("%s %s%s%s %s%s", CA.SV.CollectiblePrefix, icon, link, bracket2, categoryType, bracket1))
    end
    
    local function PrintCollectibleUnlock(message)
        printToChat(message)
    end
    
    zo_callLater(function() PrintCollectibleUnlock(message) end, 100)
end

function CA.StuckBegin(eventCode)
    printToChat(GetString(SI_FIXING_STUCK_TEXT))
end

function CA.StuckAlreadyInProgress(eventCode)
    printToChat(GetString(SI_STUCK_ERROR_ALREADY_IN_PROGRESS))
end

function CA.StuckInvalidLocation(eventCode)
    printToChat(GetString(SI_INVALID_STUCK_LOCATION))
end

function CA.StuckInCombat(eventCode)
    printToChat(GetString(SI_STUCK_ERROR_IN_COMBAT))
end

function CA.StuckOnCooldown(eventCode)
    local cooldownText = ZO_FormatTime(GetStuckCooldown(), TIME_FORMAT_STYLE_COLONS, TIME_FORMAT_PRECISION_TWELVE_HOUR)
    local cooldownRemainingText = ZO_FormatTimeMilliseconds(GetTimeUntilStuckAvailable(), TIME_FORMAT_STYLE_COLONS, TIME_FORMAT_PRECISION_TWELVE_HOUR)
    printToChat(strformat(GetString(SI_STUCK_ERROR_ON_COOLDOWN), cooldownText, cooldownRemainingText ))
end

function CA.InventoryFullQuest(eventCode)
    printToChat(GetString(SI_INVENTORY_ERROR_INVENTORY_FULL))
end

function CA.InventoryFull(eventCode, numSlotsRequested, numSlotsFree)
    local function DisplayItemFailed()
        if numSlotsRequested == 1 then
            printToChat(GetString(SI_INVENTORY_ERROR_INVENTORY_FULL))
        else
            printToChat(strformat(GetString(SI_INVENTORY_ERROR_INSUFFICIENT_SPACE), (numSlotsRequested - numSlotsFree) ))
        end
    end

    zo_callLater(DisplayItemFailed, 100)
end

function CA.LootItemFailed(eventCode, reason, itemName)
    -- Stop Spam
    EVENT_MANAGER:UnregisterForEvent(moduleName, EVENT_LOOT_ITEM_FAILED)

    local function ReactivateLootItemFailed()
    printToChat(zo_strformat(GetString("SI_LOOTITEMRESULT", reason), itemName))
        EVENT_MANAGER:RegisterForEvent(moduleName, EVENT_LOOT_ITEM_FAILED, CA.LootItemFailed)
    end

    zo_callLater(ReactivateLootItemFailed, 100)
end
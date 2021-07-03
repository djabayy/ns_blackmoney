Config = {}

Config.Locale = 'de'

Config.Location = {
    x = 486.27,
    y = -591.67,
    z = 26.21
}


Config.Percentage = 80 -- How much does the player get back? 
Config.OpenKey = 38
Config.ShowBlip = false
Config.BlipName = 'Black money market'
Config.BlipSprite = 1
Config.BlipColor = 1

Config.DisplayHelpText = true

Config.Translations = {
    ['de'] = {
        ['help_text'] = "Drücke ~INPUT_PICKUP~ um den Schwarzmarkthändler zu öffnen.",
        ['invalid_amount'] = "Bitte gebe einen gültigen Betrag an!",
        ['not_enough_money'] = "So viel Geld hast du nicht dabei!",
        ['money_wash_1'] = "Du hast $",
        ['money_wash_2'] = " gewaschen."
    },
    ['en'] = {
        ['help_text'] = "Press ~INPUT_PICKUP~ to enter the black market dealer.",
        ['invalid_amount'] = "Please enter a valid amount!",
        ['not_enough_money'] = "You dont have that much money!",
        ['money_wash_1'] = "You've washed ",
        ['money_wash_2'] = "."
    },
    ['fr'] = {
        ['help_text'] = "Appuyez sur ~INPUT_PICKUP~ pour entrer dans le black market.",
        ['invalid_amount'] = "Veuillez saisir un montant valide !",
        ['not_enough_money'] = "Vous n'avez pas assez d'argent sur vous !",
        ['money_wash_1'] = "vous avez blanchi $",
        ['money_wash_2'] = " blanchi."
        
}

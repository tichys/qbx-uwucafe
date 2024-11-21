local Translations = {
    error = {
        cancel = "Cancelled..",
        notOnDuty = "You must be on duty",
        missing_ingredients = "You don't have the required ingredients!",
        something_went_wrong = "Something went wrong..",
    },
    success= {
       crafted = "You made a %{recipe}",
    },
    progress = {
        cooking = "You are cooking..",
        making_drink = "You are making a drink..",
        making_burger = "You are making a burger..",
    },
    info = {
        craft = "Craft something..",
        duty = "On / Off Duty",
        tray = "Tray",
        burger_cook = "Cook Steak",
        fries_cook = "Make Fries",
        storage = "Storage",
    },
    menus = {
        burger_title = "BurgerShot Kitchen",
        drinks_title = "BurgerShot Drinks",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
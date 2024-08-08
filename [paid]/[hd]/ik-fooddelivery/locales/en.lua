local Translations = {
    info = {
        delivery_point = "Delivery Point",
        knock_door = "[E] - Knock the door"
    },
    error = {
        no_active_contract = "You don't have an active contract to cancel!",
        already_on_delivery = "You are already on delivery..",
        daily_limit = "Your daily limit will be exceeded with this job, you can't take it.",
        not_exist = "This contract doesn't exist anymore",
        no_job = "There is no available job in here",
        where_is_food = "Where is the food you want to deliver?..",
    },
    success = {
        store_deliver = "Store the food in your car and deliver before it gets cold!",
    },
    target = {
        get_food = "Get Food",
        store_food = "Store Food",
        job_menu = "Job Menu",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
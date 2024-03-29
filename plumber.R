# Generated by the vetiver package; edit with care

library(pins)
library(plumber)
library(rapidoc)
library(vetiver)

# Packages needed to generate model predictions
if (FALSE) {
    library(parsnip)
    library(rpart)
    library(workflows)
    # Manually added
    library(AzureStor)
    library(xml2)
}

# Modified b manually
b = board_azure(
    container = AzureStor::storage_container("https://hifadhi.blob.core.windows.net/mycontainer",
    key = "KiJkGkoUpB5FSB2R6NsJJU9inhoEDUXJVM5ACvr4mWyqi/7LsiKqK1WOTjkX+YLoH6awXkHUXELd+AStt5b3qQ=="))

v <- vetiver_pin_read(b, "cars_mpg", version = "20220625T192619Z-9a707")

#* @plumber
function(pr) {
    pr %>% vetiver_api(v)
}

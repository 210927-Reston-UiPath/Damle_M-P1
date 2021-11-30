# RoSA ReadMe

## Overview

RoSA is your robotic shopping assistant, here to help you automate your shopping business. RoSA helps you shop for all your customers from online vendors. It provides customers individual expense reports sent via email. RoSA is also able to help you add more customers to your existing clientele for your growing business. 

---

## MVP Features

- [x] Robot should be able to take client shopping lists and place orders on the appropriate vendors
- [x] Robot should record the total expense of each shopping trip for each client
- [x] Robot should be able to record any items that were out of stock or not found
- [x] Robot should be able to add clients to the existing client list and take in their shopping order
- [x] Robot should shop from at least 2 vendors
- [x] One of the vendors should be [Pega](https://training.openspan.com/login)
- [x] The other vendor should be a self made shop using HTML, CSS, and JS

---

## Stretch Goal Features

- [x] Sending emails to clients about their shopping order
- [x] Notify clients about vendor discounts/sales
- [x] Send client expense report in excel format

---

## Constraints

- [x] Client information should be stored in a DB
- [x] Vendor information should be stored in a webpage
- [x] Expense Reports should be stored in a DB
- [x] Automations should have exception handling enabled
- [x] DB tables should be 3NF

---

## Tech Stack

- [x] UiPath Studio
- [x] PostgreSQL (ElephantSql Server)
- [x] HTML, CSS, JS


---

## Custom Vendor Web Page

The Custom Vendor website in the folder `./CustomVendorWebsiteVsCode` has been published as a GitHub page from the repository @ https://github.com/210927-Reston-UiPath/damle_m_p1.customvendor.vscodeproject .

The URL for this page is https://210927-reston-uipath.github.io/damle_m_p1.customvendor.vscodeproject/ .

The folder `./P1_ShoppingCartProcess/BrowserAutomation` contains two sequences for Browser UI Automation that access the Custom Vendor website:
1. `GetVendorProductsInfoFrom3.xaml`
2. `ExecuteShoppingTripAtVendor3.xaml`

In each of these sequences, there is a `String` variable called `vscodeUri` that stores the URL for the above mentioned [GitHub page](https://210927-reston-uipath.github.io/damle_m_p1.customvendor.vscodeproject/).
Currently, the `Open Browser` activity in each of these sequences uses the `vscodeUri` variable in its `Input` property `Url`.

If I have time, I will try to deploy the Maven Web app version of this Custom Vendor web page `./CustomVendorWebsiteMavenEclipse` to the web using the __Heroku__ service.

---

## Resetting the Tables in the ElephantSql (PostgreSql) Database

The file `006_FinalTransactions.pgsql` in `./DataDesign` contains a transaction consisting of some `DELETE` and `TRUNCATE` statements. Run this transaction after testing the UiPath Process in `./P1_ShoppingCartProcess`.

---

## Demo Video

This is the URL to the playlist containing the two demo videos of this process:
https://www.youtube.com/playlist?list=PLv1xjXmyNPD75kluay8kDIEXvj6ecFHYw

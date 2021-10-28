# Read Me
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
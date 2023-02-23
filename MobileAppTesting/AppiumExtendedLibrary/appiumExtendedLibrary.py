from AppiumLibrary import AppiumLibrary
from appium.webdriver.appium_service import AppiumService, DEFAULT_PORT
from appium.webdriver.common.appiumby import AppiumBy
from robot.api.deco import keyword, library
from robot.libraries.BuiltIn import BuiltIn


@library
class appiumExtendedLibrary(AppiumLibrary):

    @property
    def appium_library_instance(self):
        return BuiltIn().get_library_instance("AppiumLibrary")

    @keyword
    def Select_the_country_where_you_want_to_shop(self, element):
        driver = self.appium_library_instance._current_application()
        coutry = driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR,
                                     "new UiScrollable(new UiSelector().scrollable(true).instance("
                                     "0)).scrollIntoView(""new UiSelector().textContains(\"" + element +
                                     "\").instance(0))")

        coutry.click()

    @keyword
    def select_products_to_add_to_cart(self, products):
        driver = self.appium_library_instance._current_application()

        driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR, "new UiScrollable(new UiSelector().scrollable(true).instance("
                                                          "0)).scrollIntoView(""new UiSelector().textContains(\"" + products +
                            "\").instance(0))")

        productList = driver.find_elements(AppiumBy.XPATH, "//*[@text='ADD TO CART']")
        print(productList)
        productList[1].click()

    @keyword
    def sample_keyword(self):
        driver = self.appium_library_instance._current_application()
        return driver.is_keyboard_shown()

    @keyword
    def start_appium_service(self):
        appium_service = AppiumService()
        appium_service.start(args=['--address', '127.0.0.1', '-p', str(DEFAULT_PORT), '--base-path', '/wd/hub/'])
        assert (appium_service.is_running)
        assert (appium_service.is_listening)

    @keyword
    def stop_appium_service(self):
        appium_service = AppiumService()
        appium_service.stop()
        assert (not appium_service.is_running)
        assert (not appium_service.is_listening)

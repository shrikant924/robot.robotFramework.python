from Selenium2Library import Selenium2Library
from robot.api.deco import keyword, library
from robot.libraries.BuiltIn import BuiltIn


@library
class seleniumExtendedLibrary(Selenium2Library):

    @property
    def selenium_library_instance(self):
        return BuiltIn().get_library_instance("Selenium2Library")

    @keyword
    def Sample(self):
        pass

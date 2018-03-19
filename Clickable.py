from selenium.common.exceptions import WebDriverException
class Clickable:

    def my_keyword(self, path):
        return self._helper_method(path)

    def _helper_method(self, path):
        try:
            path.click()
        except WebDriverException:
            print "Element is not clickable"
        return path
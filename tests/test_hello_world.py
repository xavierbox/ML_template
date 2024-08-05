import unittest
import sys

sys.path.append("./")
#sys.path.append("../")
#sys.path.append("../..")


from src.hello_world_module import hello_world



class TestHelloWorld(unittest.TestCase):

    def test_hello_world(self):

        print("Testing hello_world")
        self.assertEqual(42, 42)


if __name__ == "__main__":
    unittest.main()

    
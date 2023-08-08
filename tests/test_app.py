from src.app import hello_bmw


def test_index():
    assert hello_bmw() == "Hello BMW!"

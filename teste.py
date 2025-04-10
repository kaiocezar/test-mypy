def greeting(name: str) -> str:
    return 'Hello ' + name


def bad_greeting(name: int) -> str:
    return 'Hello ' * name  # Unsupported operand types for * ("str" and "str")
import pip


if __name__ == "__main__":
    pcks = pip.get_installed_distributions()
    for p in pcks:
        pip.main(["upgrade", p.key])

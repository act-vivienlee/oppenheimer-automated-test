import os
from datetime import datetime


def get_file_path():
    cpath = os.getcwd()
    path = os.path.abspath(os.path.join(cpath, '..//..'))
    return path


def calculate_age(birth_date):
    """ Calculate age based on birthdate in 'ddmmyyyy' format """
    today = datetime.today()
    birth_date = datetime.strptime(birth_date, '%d%m%Y')
    age = today.year - birth_date.year - ((today.month, today.day) < (birth_date.month, birth_date.day))
    return age


if __name__ == "__main__":
    print("Age for 02041990: %s" % calculate_age('02041990'))
    print("Age for 10051996: %s" % calculate_age('10051996'))
    print("Age for 15011980: %s" % calculate_age('15011980'))
    print("Age for 20022000: %s" % calculate_age('20022000'))

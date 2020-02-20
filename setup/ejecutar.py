import subprocess

op1 = ['robot',
       '-d', 'Suites/report',
       '-V', 'Recursos/config_dev.py',
       '-i', 'rol6',
       'Suites/008__Suite_Roles.robot']

op2 = ['robot',
       '-d', 'Reportes',
       'setup_teardown.robot']


def correr_en_terminal(comando):
    subprocess.Popen(comando)


correr_en_terminal(op2)

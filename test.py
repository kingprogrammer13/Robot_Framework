class test:

    def set_recipient(self, rcpt_list):
        """ set email recipient """
        recp_str = repr(','.join(rcpt_list))
        print rcpt_list
        mystr = ' --to ' + recp_str + ' '

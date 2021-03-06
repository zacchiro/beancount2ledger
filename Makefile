# SPDX-FileCopyrightText: © 2020 Martin Michlmayr <tbm@cyrius.com>
#
# SPDX-License-Identifier: GPL-2.0-or-later

all: docs

docs/beancount2ledger.1: docs/beancount2ledger.1.scd
	scdoc < $< > $@

docs/beancount2ledger.5: docs/beancount2ledger.5.scd
	scdoc < $< > $@

man: docs/beancount2ledger.1 docs/beancount2ledger.5

docs: man

clean:
	rm -f docs/beancount2ledger.1
	rm -f docs/beancount2ledger.5

.PHONY: all clean docs

# Copyright (C) 2013-2015 Sören Tempel
# Copyright (C) 2016 Klemens Nanni <kl3@posteo.org>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

VERSION = 1.4.4
PREFIX  = /usr/local
BINDIR  = $(PREFIX)/bin
MANDIR  = $(PREFIX)/share/man

install:
	install -Dm755 spm.sh "$(DESTDIR)$(BINDIR)/spm"
	install -Dm644 spm.1 "$(DESTDIR)$(MANDIR)/man1/spm.1"

uninstall:
	$(RM) "$(DESTDIR)$(BINDIR)/spm" \
		"$(DESTDIR)$(MANDIR)/man1/spm.1"

.PHONY: install uninstall

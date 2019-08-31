git diff |grep "^[-+] " |awk '{ print $2 }' \
| sed -e "s/1.1[3-7].[0-9][0-9]*/bundler/" -e "s/bundler.pre.[12]//" \
  -e "s/2.0.0.pre.1//" | sort -u | tr "\012" ", " \
| sed -e "s/,$//" -e "s/^,//" -e "s,revision:,latest rails," \
  -e 's,$,] gems",' -e 's,^,gacp "Upgraded [,'
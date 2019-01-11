echo "Debrant Starts at  $(date "+%H:%M:%S")"
find /usr/lib/python3/dist-packages/odoo -type f -exec sed -i 's/Odoo/Axiom/g' {} \;
echo "Title is debrand at $(date "+%H:%M:%S")"
find /usr/lib/python3/dist-packages/odoo -type f -exec sed -i 's/odoo.com/axm.app/g' {} \;
echo "Website is debrand at $(date "+%H:%M:%S")"
find /usr/lib/python3/dist-packages/odoo -type f -exec sed -i 's/Odoo.com/axm.app/g' {} \;
echo "Complete debranding at $(date "+%H:%M:%S")"

cp logo.png /usr/lib/python3/dist-packages/odoo/addons/web/static/src/img
cp logo2.png /usr/lib/python3/dist-packages/odoo/addons/web/static/src/img
cp favicon.ico /usr/lib/python3/dist-packages/odoo/addons/web/static/src/img/
cp logo.png /usr/lib/python3/dist-packages/odoo/addons/web_planner/static/src/img/akbar_logo.png
cp logo.png /usr/lib/python3/dist-packages/odoo/addons/web_planner/static/src/img/flectra_logo.png
cp logo.png /usr/lib/python3/dist-packages/odoo/addons/base/res/res_company_logo.png
cp logo.png /usr/lib/python3/dist-packages/odoo/addons/base/static/img/logo.png
cp logo.png /usr/lib/python3/dist-packages/odoo/addons/base/static/img/logo_white.png
cp logo.png /usr/lib/python3/dist-packages/odoo/addons/base/static/img/main_partner_image.png

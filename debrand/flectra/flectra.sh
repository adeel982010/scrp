echo "Debranding starts at $(date "+%H:%M:%S")"
find /usr/lib/python3/dist-packages/flectra -type f -exec sed -i 's/Flectra/Axiom/g' {} \;
echo "Name is debrand at $(date "+%H:%M:%S")"
find /usr/lib/python3/dist-packages/flectra -type f -exec sed -i 's/flectrahq.com/axm.app/g' {} \;
echo "Website debrand at $(date "+%H:%M:%S")"
find /usr/lib/python3/dist-packages/flectra -type f -exec sed -i 's/FlectraHQ/AxiomHQ/g' {} \;
echo "Title is debrand at $(date "+%H:%M:%S")"
find /usr/lib/python3/dist-packages/flectra -type f -exec sed -i 's/flectrahq/axiomhq/g' {} \;
echo "Complete debranding at $(date "+%H:%M:%S")"

cp logo.png /usr/lib/python3/dist-packages/flectra/addons/web/static/src/img
cp logo2.png /usr/lib/python3/dist-packages/flectra/addons/web/static/src/img
cp favicon.ico /usr/lib/python3/dist-packages/flectra/addons/web/static/src/img/
cp logo.png /usr/lib/python3/dist-packages/flectra/addons/web_planner/static/src/img/akbar_logo.png
cp logo.png /usr/lib/python3/dist-packages/flectra/addons/web_planner/static/src/img/flectra_logo.png
cp logo.png /usr/lib/python3/dist-packages/flectra/addons/base/res/res_company_logo.png
cp logo.png /usr/lib/python3/dist-packages/flectra/addons/base/static/img/logo.png
cp logo.png /usr/lib/python3/dist-packages/flectra/addons/base/static/img/logo_white.png
cp logo.png /usr/lib/python3/dist-packages/flectra/addons/base/static/img/main_partner_image.png

echo "Logo debranding at $(date "+%H:%M:%S")"

#/bin/sh
# compositor
killall picom
picom &

#Activa el bloqueo de pantalla al suspender, requiere slock y xss-lock
xss-lock -- slock &

# Inicia EXWM
# exec dbus-launch --exit-with-session emacs -mm --debug-init -l ~/.config/emacs/desktop.el
exec dbus-run-session emacs -mm --debug-init -l ~/.config/emacs/desktop.el

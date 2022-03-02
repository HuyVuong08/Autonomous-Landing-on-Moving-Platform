;; Auto-generated. Do not edit!


(when (boundp 'neato::ButtonEvent)
  (if (not (find-package "NEATO"))
    (make-package "NEATO"))
  (shadow 'ButtonEvent (find-package "NEATO")))
(unless (find-package "NEATO::BUTTONEVENT")
  (make-package "NEATO::BUTTONEVENT"))

(in-package "ROS")
;;//! \htmlinclude ButtonEvent.msg.html


(intern "*START_BUTTON*" (find-package "NEATO::BUTTONEVENT"))
(shadow '*START_BUTTON* (find-package "NEATO::BUTTONEVENT"))
(defconstant neato::ButtonEvent::*START_BUTTON* 0)
(intern "*SOFT_BUTTON*" (find-package "NEATO::BUTTONEVENT"))
(shadow '*SOFT_BUTTON* (find-package "NEATO::BUTTONEVENT"))
(defconstant neato::ButtonEvent::*SOFT_BUTTON* 1)
(intern "*BACK_BUTTON*" (find-package "NEATO::BUTTONEVENT"))
(shadow '*BACK_BUTTON* (find-package "NEATO::BUTTONEVENT"))
(defconstant neato::ButtonEvent::*BACK_BUTTON* 2)
(intern "*DOWN_BUTTON*" (find-package "NEATO::BUTTONEVENT"))
(shadow '*DOWN_BUTTON* (find-package "NEATO::BUTTONEVENT"))
(defconstant neato::ButtonEvent::*DOWN_BUTTON* 3)
(intern "*UP_BUTTON*" (find-package "NEATO::BUTTONEVENT"))
(shadow '*UP_BUTTON* (find-package "NEATO::BUTTONEVENT"))
(defconstant neato::ButtonEvent::*UP_BUTTON* 4)

(defun neato::ButtonEvent-to-symbol (const)
  (cond
        ((= const 0) 'neato::ButtonEvent::*START_BUTTON*)
        ((= const 1) 'neato::ButtonEvent::*SOFT_BUTTON*)
        ((= const 2) 'neato::ButtonEvent::*BACK_BUTTON*)
        ((= const 3) 'neato::ButtonEvent::*DOWN_BUTTON*)
        ((= const 4) 'neato::ButtonEvent::*UP_BUTTON*)
        (t nil)))

(defclass neato::ButtonEvent
  :super ros::object
  :slots (_button _engaged ))

(defmethod neato::ButtonEvent
  (:init
   (&key
    ((:button __button) 0)
    ((:engaged __engaged) nil)
    )
   (send-super :init)
   (setq _button (round __button))
   (setq _engaged __engaged)
   self)
  (:button
   (&optional __button)
   (if __button (setq _button __button)) _button)
  (:engaged
   (&optional (__engaged :null))
   (if (not (eq __engaged :null)) (setq _engaged __engaged)) _engaged)
  (:serialization-length
   ()
   (+
    ;; int8 _button
    1
    ;; bool _engaged
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _button
       (write-byte _button s)
     ;; bool _engaged
       (if _engaged (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _button
     (setq _button (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _button 127) (setq _button (- _button 256)))
   ;; bool _engaged
     (setq _engaged (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get neato::ButtonEvent :md5sum-) "c591d569eb4b1b2f2f2100469f94eec5")
(setf (get neato::ButtonEvent :datatype-) "neato/ButtonEvent")
(setf (get neato::ButtonEvent :definition-)
      "# Button Values
int8 START_BUTTON = 0   # Start button
int8 SOFT_BUTTON = 1    # Soft button
int8 BACK_BUTTON = 2    # Back button
int8 DOWN_BUTTON = 3    # Down button
int8 UP_BUTTON = 4      # Up button

int8    button          # expected values above
bool    engaged         # whether or not the button is down

")



(provide :neato/ButtonEvent "c591d569eb4b1b2f2f2100469f94eec5")



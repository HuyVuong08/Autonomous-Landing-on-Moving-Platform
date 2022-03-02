;; Auto-generated. Do not edit!


(when (boundp 'neato::BumperEvent)
  (if (not (find-package "NEATO"))
    (make-package "NEATO"))
  (shadow 'BumperEvent (find-package "NEATO")))
(unless (find-package "NEATO::BUMPEREVENT")
  (make-package "NEATO::BUMPEREVENT"))

(in-package "ROS")
;;//! \htmlinclude BumperEvent.msg.html


(intern "*LEFT_SIDE*" (find-package "NEATO::BUMPEREVENT"))
(shadow '*LEFT_SIDE* (find-package "NEATO::BUMPEREVENT"))
(defconstant neato::BumperEvent::*LEFT_SIDE* 0)
(intern "*LEFT_FRONT*" (find-package "NEATO::BUMPEREVENT"))
(shadow '*LEFT_FRONT* (find-package "NEATO::BUMPEREVENT"))
(defconstant neato::BumperEvent::*LEFT_FRONT* 1)
(intern "*RIGHT_FRONT*" (find-package "NEATO::BUMPEREVENT"))
(shadow '*RIGHT_FRONT* (find-package "NEATO::BUMPEREVENT"))
(defconstant neato::BumperEvent::*RIGHT_FRONT* 2)
(intern "*RIGHT_SIDE*" (find-package "NEATO::BUMPEREVENT"))
(shadow '*RIGHT_SIDE* (find-package "NEATO::BUMPEREVENT"))
(defconstant neato::BumperEvent::*RIGHT_SIDE* 3)

(defun neato::BumperEvent-to-symbol (const)
  (cond
        ((= const 0) 'neato::BumperEvent::*LEFT_SIDE*)
        ((= const 1) 'neato::BumperEvent::*LEFT_FRONT*)
        ((= const 2) 'neato::BumperEvent::*RIGHT_FRONT*)
        ((= const 3) 'neato::BumperEvent::*RIGHT_SIDE*)
        (t nil)))

(defclass neato::BumperEvent
  :super ros::object
  :slots (_bumper _engaged ))

(defmethod neato::BumperEvent
  (:init
   (&key
    ((:bumper __bumper) 0)
    ((:engaged __engaged) nil)
    )
   (send-super :init)
   (setq _bumper (round __bumper))
   (setq _engaged __engaged)
   self)
  (:bumper
   (&optional __bumper)
   (if __bumper (setq _bumper __bumper)) _bumper)
  (:engaged
   (&optional (__engaged :null))
   (if (not (eq __engaged :null)) (setq _engaged __engaged)) _engaged)
  (:serialization-length
   ()
   (+
    ;; int8 _bumper
    1
    ;; bool _engaged
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _bumper
       (write-byte _bumper s)
     ;; bool _engaged
       (if _engaged (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _bumper
     (setq _bumper (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _bumper 127) (setq _bumper (- _bumper 256)))
   ;; bool _engaged
     (setq _engaged (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get neato::BumperEvent :md5sum-) "5ebd9e65af101af002d83ad099e3c4da")
(setf (get neato::BumperEvent :datatype-) "neato/BumperEvent")
(setf (get neato::BumperEvent :definition-)
      "# Bumper Values 
int8 LEFT_SIDE = 0          # Left front side bumper switch
int8 LEFT_FRONT = 1         # Left front bumper switch
int8 RIGHT_FRONT = 2        # Right front bumper switch
int8 RIGHT_SIDE = 3         # Right front side bumper switch

int8    bumper              # values defined above
bool    engaged             # whether or not the bumper is engaged (detecting something) or not

")



(provide :neato/BumperEvent "5ebd9e65af101af002d83ad099e3c4da")



;; Auto-generated. Do not edit!


(when (boundp 'sumit_xl_tools::SumitXLPose)
  (if (not (find-package "SUMIT_XL_TOOLS"))
    (make-package "SUMIT_XL_TOOLS"))
  (shadow 'SumitXLPose (find-package "SUMIT_XL_TOOLS")))
(unless (find-package "SUMIT_XL_TOOLS::SUMITXLPOSE")
  (make-package "SUMIT_XL_TOOLS::SUMITXLPOSE"))
(unless (find-package "SUMIT_XL_TOOLS::SUMITXLPOSEREQUEST")
  (make-package "SUMIT_XL_TOOLS::SUMITXLPOSEREQUEST"))
(unless (find-package "SUMIT_XL_TOOLS::SUMITXLPOSERESPONSE")
  (make-package "SUMIT_XL_TOOLS::SUMITXLPOSERESPONSE"))

(in-package "ROS")





(defclass sumit_xl_tools::SumitXLPoseRequest
  :super ros::object
  :slots (_label ))

(defmethod sumit_xl_tools::SumitXLPoseRequest
  (:init
   (&key
    ((:label __label) "")
    )
   (send-super :init)
   (setq _label (string __label))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sumit_xl_tools::SumitXLPoseResponse
  :super ros::object
  :slots (_navigation_successfull _message ))

(defmethod sumit_xl_tools::SumitXLPoseResponse
  (:init
   (&key
    ((:navigation_successfull __navigation_successfull) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _navigation_successfull __navigation_successfull)
   (setq _message (string __message))
   self)
  (:navigation_successfull
   (&optional __navigation_successfull)
   (if __navigation_successfull (setq _navigation_successfull __navigation_successfull)) _navigation_successfull)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _navigation_successfull
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _navigation_successfull
       (if _navigation_successfull (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _navigation_successfull
     (setq _navigation_successfull (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass sumit_xl_tools::SumitXLPose
  :super ros::object
  :slots ())

(setf (get sumit_xl_tools::SumitXLPose :md5sum-) "920ca5ca095e1b5230fc32da338a974c")
(setf (get sumit_xl_tools::SumitXLPose :datatype-) "sumit_xl_tools/SumitXLPose")
(setf (get sumit_xl_tools::SumitXLPose :request) sumit_xl_tools::SumitXLPoseRequest)
(setf (get sumit_xl_tools::SumitXLPose :response) sumit_xl_tools::SumitXLPoseResponse)

(defmethod sumit_xl_tools::SumitXLPoseRequest
  (:response () (instance sumit_xl_tools::SumitXLPoseResponse :init)))

(setf (get sumit_xl_tools::SumitXLPoseRequest :md5sum-) "920ca5ca095e1b5230fc32da338a974c")
(setf (get sumit_xl_tools::SumitXLPoseRequest :datatype-) "sumit_xl_tools/SumitXLPoseRequest")
(setf (get sumit_xl_tools::SumitXLPoseRequest :definition-)
      "
string label
---

bool navigation_successfull
string message
")

(setf (get sumit_xl_tools::SumitXLPoseResponse :md5sum-) "920ca5ca095e1b5230fc32da338a974c")
(setf (get sumit_xl_tools::SumitXLPoseResponse :datatype-) "sumit_xl_tools/SumitXLPoseResponse")
(setf (get sumit_xl_tools::SumitXLPoseResponse :definition-)
      "
string label
---

bool navigation_successfull
string message
")



(provide :sumit_xl_tools/SumitXLPose "920ca5ca095e1b5230fc32da338a974c")



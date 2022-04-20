;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::LabeledPointInImage)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'LabeledPointInImage (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::LABELEDPOINTINIMAGE")
  (make-package "PERCEPTION_MSGS::LABELEDPOINTINIMAGE"))

(in-package "ROS")
;;//! \htmlinclude LabeledPointInImage.msg.html


(defclass perception_msgs::LabeledPointInImage
  :super ros::object
  :slots (_value _pointsInImage ))

(defmethod perception_msgs::LabeledPointInImage
  (:init
   (&key
    ((:value __value) "")
    ((:pointsInImage __pointsInImage) (instance perception_msgs::PointInImage :init))
    )
   (send-super :init)
   (setq _value (string __value))
   (setq _pointsInImage __pointsInImage)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:pointsInImage
   (&rest __pointsInImage)
   (if (keywordp (car __pointsInImage))
       (send* _pointsInImage __pointsInImage)
     (progn
       (if __pointsInImage (setq _pointsInImage (car __pointsInImage)))
       _pointsInImage)))
  (:serialization-length
   ()
   (+
    ;; string _value
    4 (length _value)
    ;; perception_msgs/PointInImage _pointsInImage
    (send _pointsInImage :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;; perception_msgs/PointInImage _pointsInImage
       (send _pointsInImage :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; perception_msgs/PointInImage _pointsInImage
     (send _pointsInImage :deserialize buf ptr-) (incf ptr- (send _pointsInImage :serialization-length))
   ;;
   self)
  )

(setf (get perception_msgs::LabeledPointInImage :md5sum-) "1e84abf3e87ce958922be1dad2422c33")
(setf (get perception_msgs::LabeledPointInImage :datatype-) "perception_msgs/LabeledPointInImage")
(setf (get perception_msgs::LabeledPointInImage :definition-)
      "# string value. Empty if there is no label
string value
# Point with x,y coordinates of the point in the image
PointInImage pointsInImage

================================================================================
MSG: perception_msgs/PointInImage
# x coordinate of the point in the image
float32 x
# y coordinate of the poitn in the image
float32 y

")



(provide :perception_msgs/LabeledPointInImage "1e84abf3e87ce958922be1dad2422c33")



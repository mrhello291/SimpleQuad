;; Auto-generated. Do not edit!


(when (boundp 'quad_control::Angle)
  (if (not (find-package "QUAD_CONTROL"))
    (make-package "QUAD_CONTROL"))
  (shadow 'Angle (find-package "QUAD_CONTROL")))
(unless (find-package "QUAD_CONTROL::ANGLE")
  (make-package "QUAD_CONTROL::ANGLE"))

(in-package "ROS")
;;//! \htmlinclude Angle.msg.html


(defclass quad_control::Angle
  :super ros::object
  :slots (_theta1 _theta2 _theta3 ))

(defmethod quad_control::Angle
  (:init
   (&key
    ((:theta1 __theta1) 0.0)
    ((:theta2 __theta2) 0.0)
    ((:theta3 __theta3) 0.0)
    )
   (send-super :init)
   (setq _theta1 (float __theta1))
   (setq _theta2 (float __theta2))
   (setq _theta3 (float __theta3))
   self)
  (:theta1
   (&optional __theta1)
   (if __theta1 (setq _theta1 __theta1)) _theta1)
  (:theta2
   (&optional __theta2)
   (if __theta2 (setq _theta2 __theta2)) _theta2)
  (:theta3
   (&optional __theta3)
   (if __theta3 (setq _theta3 __theta3)) _theta3)
  (:serialization-length
   ()
   (+
    ;; float32 _theta1
    4
    ;; float32 _theta2
    4
    ;; float32 _theta3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _theta1
       (sys::poke _theta1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta2
       (sys::poke _theta2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta3
       (sys::poke _theta3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _theta1
     (setq _theta1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta2
     (setq _theta2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta3
     (setq _theta3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get quad_control::Angle :md5sum-) "f6b72178218fbe6abc22ec5b1c7a40d8")
(setf (get quad_control::Angle :datatype-) "quad_control/Angle")
(setf (get quad_control::Angle :definition-)
      "float32 theta1
float32 theta2
float32 theta3
")



(provide :quad_control/Angle "f6b72178218fbe6abc22ec5b1c7a40d8")



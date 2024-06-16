; Auto-generated. Do not edit!


(cl:in-package yolo_ros_msgs-msg)


;//! \htmlinclude CheckForObjectsGoal.msg.html

(cl:defclass <CheckForObjectsGoal> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass CheckForObjectsGoal (<CheckForObjectsGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CheckForObjectsGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CheckForObjectsGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yolo_ros_msgs-msg:<CheckForObjectsGoal> is deprecated: use yolo_ros_msgs-msg:CheckForObjectsGoal instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <CheckForObjectsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_ros_msgs-msg:id-val is deprecated.  Use yolo_ros_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <CheckForObjectsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yolo_ros_msgs-msg:image-val is deprecated.  Use yolo_ros_msgs-msg:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CheckForObjectsGoal>) ostream)
  "Serializes a message object of type '<CheckForObjectsGoal>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CheckForObjectsGoal>) istream)
  "Deserializes a message object of type '<CheckForObjectsGoal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CheckForObjectsGoal>)))
  "Returns string type for a message object of type '<CheckForObjectsGoal>"
  "yolo_ros_msgs/CheckForObjectsGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CheckForObjectsGoal)))
  "Returns string type for a message object of type 'CheckForObjectsGoal"
  "yolo_ros_msgs/CheckForObjectsGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CheckForObjectsGoal>)))
  "Returns md5sum for a message object of type '<CheckForObjectsGoal>"
  "c2342f9acc4aac63fdd632073dd76c7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CheckForObjectsGoal)))
  "Returns md5sum for a message object of type 'CheckForObjectsGoal"
  "c2342f9acc4aac63fdd632073dd76c7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CheckForObjectsGoal>)))
  "Returns full string definition for message of type '<CheckForObjectsGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Check if objects in image~%~%# Goal definition~%int16 id~%sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CheckForObjectsGoal)))
  "Returns full string definition for message of type 'CheckForObjectsGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Check if objects in image~%~%# Goal definition~%int16 id~%sensor_msgs/Image image~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CheckForObjectsGoal>))
  (cl:+ 0
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CheckForObjectsGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'CheckForObjectsGoal
    (cl:cons ':id (id msg))
    (cl:cons ':image (image msg))
))

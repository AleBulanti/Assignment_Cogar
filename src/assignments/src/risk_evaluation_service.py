#!/usr/bin/env python3
import rospy
from assignments.srv import risk_evaluation, risk_evaluationResponse

def risk_evaluation_callback(req):
    rospy.loginfo(f"Received risk evaluation request at ({req.x}, {req.y}, {req.z}), Hazard: {req.hazard_type}")
    
    # Command the robot to move closer (you can implement specific logic here)
    success = True
    message = f"Moving closer to {req.hazard_type} at position ({req.x}, {req.y}, {req.z})."

    return risk_evaluationResponse(success, message)

def risk_evaluation_service():
    rospy.init_node('risk_evaluation_service')
    service = rospy.Service('/risk_evaluation', risk_evaluation, risk_evaluation_callback)
    rospy.loginfo("Risk evaluation service is ready!")
    rospy.spin()

if __name__ == '__main__':
    risk_evaluation_service()
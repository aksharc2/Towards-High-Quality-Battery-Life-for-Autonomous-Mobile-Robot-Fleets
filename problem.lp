\ Model qp
\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  - 0.9 x_(0,0,0,0) - 0.8 x_(0,0,0,1) - 0.7 x_(0,0,0,2) - 0.8 x_(0,0,0,3)
   - x_(0,0,0,4) - 0.9 x_(1,0,0,0) - 0.8 x_(1,0,0,1) - 0.7 x_(1,0,0,2)
   - 0.8 x_(1,0,0,3) - x_(1,0,0,4) - 0.9 x_(2,0,0,0) - 0.8 x_(2,0,0,1)
   - 0.7 x_(2,0,0,2) - 0.8 x_(2,0,0,3) - x_(2,0,0,4) - 0.9 x_(3,0,0,0)
   - 0.8 x_(3,0,0,1) - 0.7 x_(3,0,0,2) - 0.8 x_(3,0,0,3) - x_(3,0,0,4)
   - 0.9 x_(4,0,0,0) - 0.8 x_(4,0,0,1) - 0.7 x_(4,0,0,2) - 0.8 x_(4,0,0,3)
   - x_(4,0,0,4) - 0.9 x_(5,0,0,0) - 0.8 x_(5,0,0,1) - 0.7 x_(5,0,0,2)
   - 0.8 x_(5,0,0,3) - x_(5,0,0,4) - 0.9 x_(6,0,0,0) - 0.8 x_(6,0,0,1)
   - 0.7 x_(6,0,0,2) - 0.8 x_(6,0,0,3) - x_(6,0,0,4) - 0.9 x_(7,0,0,0)
   - 0.8 x_(7,0,0,1) - 0.7 x_(7,0,0,2) - 0.8 x_(7,0,0,3) - x_(7,0,0,4)
   - 0.9 x_(8,0,0,0) - 0.8 x_(8,0,0,1) - 0.7 x_(8,0,0,2) - 0.8 x_(8,0,0,3)
   - x_(8,0,0,4) - 0.9 x_(9,0,0,0) - 0.8 x_(9,0,0,1) - 0.7 x_(9,0,0,2)
   - 0.8 x_(9,0,0,3) - x_(9,0,0,4) - 0.9 x_(10,0,0,0) - 0.8 x_(10,0,0,1)
   - 0.7 x_(10,0,0,2) - 0.8 x_(10,0,0,3) - x_(10,0,0,4) - 0.9 x_(11,0,0,0)
   - 0.8 x_(11,0,0,1) - 0.7 x_(11,0,0,2) - 0.8 x_(11,0,0,3) - x_(11,0,0,4)
   - 0.9 x_(12,0,0,0) - 0.8 x_(12,0,0,1) - 0.7 x_(12,0,0,2)
   - 0.8 x_(12,0,0,3) - x_(12,0,0,4) - 0.9 x_(13,0,0,0) - 0.8 x_(13,0,0,1)
   - 0.7 x_(13,0,0,2) - 0.8 x_(13,0,0,3) - x_(13,0,0,4) - 0.9 x_(14,0,0,0)
   - 0.8 x_(14,0,0,1) - 0.7 x_(14,0,0,2) - 0.8 x_(14,0,0,3) - x_(14,0,0,4)
   - 0.9 x_(15,0,0,0) - 0.8 x_(15,0,0,1) - 0.7 x_(15,0,0,2)
   - 0.8 x_(15,0,0,3) - x_(15,0,0,4) - 0.9 x_(16,0,0,0) - 0.8 x_(16,0,0,1)
   - 0.7 x_(16,0,0,2) - 0.8 x_(16,0,0,3) - x_(16,0,0,4) - 0.9 x_(17,0,0,0)
   - 0.8 x_(17,0,0,1) - 0.7 x_(17,0,0,2) - 0.8 x_(17,0,0,3) - x_(17,0,0,4)
   - 0.9 x_(18,0,0,0) - 0.8 x_(18,0,0,1) - 0.7 x_(18,0,0,2)
   - 0.8 x_(18,0,0,3) - x_(18,0,0,4) - 0.9 x_(19,0,0,0) - 0.8 x_(19,0,0,1)
   - 0.7 x_(19,0,0,2) - 0.8 x_(19,0,0,3) - x_(19,0,0,4) - 0.9 x_(20,0,0,0)
   - 0.8 x_(20,0,0,1) - 0.7 x_(20,0,0,2) - 0.8 x_(20,0,0,3) - x_(20,0,0,4)
   - 0.9 x_(21,0,0,0) - 0.8 x_(21,0,0,1) - 0.7 x_(21,0,0,2)
   - 0.8 x_(21,0,0,3) - x_(21,0,0,4) - 0.9 x_(22,0,0,0) - 0.8 x_(22,0,0,1)
   - 0.7 x_(22,0,0,2) - 0.8 x_(22,0,0,3) - x_(22,0,0,4) - 0.9 x_(23,0,0,0)
   - 0.8 x_(23,0,0,1) - 0.7 x_(23,0,0,2) - 0.8 x_(23,0,0,3) - x_(23,0,0,4)
   + 100.8 Constant + [ 240 a_(0,0,0) * aux1_(0,0)
   + 240 b_(0,0,0) * aux2_(0,0) + 240 a_(1,0,0) * aux1_(1,0)
   + 240 b_(1,0,0) * aux2_(1,0) + 240 a_(2,0,0) * aux1_(2,0)
   + 240 b_(2,0,0) * aux2_(2,0) + 240 a_(3,0,0) * aux1_(3,0)
   + 240 b_(3,0,0) * aux2_(3,0) + 240 a_(4,0,0) * aux1_(4,0)
   + 240 b_(4,0,0) * aux2_(4,0) + 240 a_(5,0,0) * aux1_(5,0)
   + 240 b_(5,0,0) * aux2_(5,0) + 240 a_(6,0,0) * aux1_(6,0)
   + 240 b_(6,0,0) * aux2_(6,0) + 240 a_(7,0,0) * aux1_(7,0)
   + 240 b_(7,0,0) * aux2_(7,0) + 240 a_(8,0,0) * aux1_(8,0)
   + 240 b_(8,0,0) * aux2_(8,0) + 240 a_(9,0,0) * aux1_(9,0)
   + 240 b_(9,0,0) * aux2_(9,0) + 240 a_(10,0,0) * aux1_(10,0)
   + 240 b_(10,0,0) * aux2_(10,0) + 240 a_(11,0,0) * aux1_(11,0)
   + 240 b_(11,0,0) * aux2_(11,0) + 240 a_(12,0,0) * aux1_(12,0)
   + 240 b_(12,0,0) * aux2_(12,0) + 240 a_(13,0,0) * aux1_(13,0)
   + 240 b_(13,0,0) * aux2_(13,0) + 240 a_(14,0,0) * aux1_(14,0)
   + 240 b_(14,0,0) * aux2_(14,0) + 240 a_(15,0,0) * aux1_(15,0)
   + 240 b_(15,0,0) * aux2_(15,0) + 240 a_(16,0,0) * aux1_(16,0)
   + 240 b_(16,0,0) * aux2_(16,0) + 240 a_(17,0,0) * aux1_(17,0)
   + 240 b_(17,0,0) * aux2_(17,0) + 240 a_(18,0,0) * aux1_(18,0)
   + 240 b_(18,0,0) * aux2_(18,0) + 240 a_(19,0,0) * aux1_(19,0)
   + 240 b_(19,0,0) * aux2_(19,0) + 240 a_(20,0,0) * aux1_(20,0)
   + 240 b_(20,0,0) * aux2_(20,0) + 240 a_(21,0,0) * aux1_(21,0)
   + 240 b_(21,0,0) * aux2_(21,0) + 240 a_(22,0,0) * aux1_(22,0)
   + 240 b_(22,0,0) * aux2_(22,0) + 240 a_(23,0,0) * aux1_(23,0)
   + 240 b_(23,0,0) * aux2_(23,0) ] / 2 
Subject To
 Task_Activitiy_Status_[0,0,0]: x_(0,0,0,0) <= 1
 Task_Activitiy_Status_[0,0,1]: x_(0,0,0,1) <= 1
 Task_Activitiy_Status_[0,0,2]: x_(0,0,0,2) <= 1
 Task_Activitiy_Status_[0,0,3]: x_(0,0,0,3) <= 1
 Task_Activitiy_Status_[0,0,4]: x_(0,0,0,4) <= 1
 Task_Activitiy_Status_[1,0,0]: x_(1,0,0,0) <= 1
 Task_Activitiy_Status_[1,0,1]: x_(1,0,0,1) <= 1
 Task_Activitiy_Status_[1,0,2]: x_(1,0,0,2) <= 1
 Task_Activitiy_Status_[1,0,3]: x_(1,0,0,3) <= 1
 Task_Activitiy_Status_[1,0,4]: x_(1,0,0,4) <= 1
 Task_Activitiy_Status_[2,0,0]: x_(2,0,0,0) <= 1
 Task_Activitiy_Status_[2,0,1]: x_(2,0,0,1) <= 1
 Task_Activitiy_Status_[2,0,2]: x_(2,0,0,2) <= 1
 Task_Activitiy_Status_[2,0,3]: x_(2,0,0,3) <= 1
 Task_Activitiy_Status_[2,0,4]: x_(2,0,0,4) <= 1
 Task_Activitiy_Status_[3,0,0]: x_(3,0,0,0) <= 1
 Task_Activitiy_Status_[3,0,1]: x_(3,0,0,1) <= 1
 Task_Activitiy_Status_[3,0,2]: x_(3,0,0,2) <= 1
 Task_Activitiy_Status_[3,0,3]: x_(3,0,0,3) <= 1
 Task_Activitiy_Status_[3,0,4]: x_(3,0,0,4) <= 1
 Task_Activitiy_Status_[4,0,0]: x_(4,0,0,0) <= 1
 Task_Activitiy_Status_[4,0,1]: x_(4,0,0,1) <= 1
 Task_Activitiy_Status_[4,0,2]: x_(4,0,0,2) <= 1
 Task_Activitiy_Status_[4,0,3]: x_(4,0,0,3) <= 1
 Task_Activitiy_Status_[4,0,4]: x_(4,0,0,4) <= 1
 Task_Activitiy_Status_[5,0,0]: x_(5,0,0,0) <= 1
 Task_Activitiy_Status_[5,0,1]: x_(5,0,0,1) <= 1
 Task_Activitiy_Status_[5,0,2]: x_(5,0,0,2) <= 1
 Task_Activitiy_Status_[5,0,3]: x_(5,0,0,3) <= 1
 Task_Activitiy_Status_[5,0,4]: x_(5,0,0,4) <= 1
 Task_Activitiy_Status_[6,0,0]: x_(6,0,0,0) <= 1
 Task_Activitiy_Status_[6,0,1]: x_(6,0,0,1) <= 1
 Task_Activitiy_Status_[6,0,2]: x_(6,0,0,2) <= 1
 Task_Activitiy_Status_[6,0,3]: x_(6,0,0,3) <= 1
 Task_Activitiy_Status_[6,0,4]: x_(6,0,0,4) <= 1
 Task_Activitiy_Status_[7,0,0]: x_(7,0,0,0) <= 1
 Task_Activitiy_Status_[7,0,1]: x_(7,0,0,1) <= 1
 Task_Activitiy_Status_[7,0,2]: x_(7,0,0,2) <= 1
 Task_Activitiy_Status_[7,0,3]: x_(7,0,0,3) <= 1
 Task_Activitiy_Status_[7,0,4]: x_(7,0,0,4) <= 1
 Task_Activitiy_Status_[8,0,0]: x_(8,0,0,0) <= 1
 Task_Activitiy_Status_[8,0,1]: x_(8,0,0,1) <= 1
 Task_Activitiy_Status_[8,0,2]: x_(8,0,0,2) <= 1
 Task_Activitiy_Status_[8,0,3]: x_(8,0,0,3) <= 1
 Task_Activitiy_Status_[8,0,4]: x_(8,0,0,4) <= 1
 Task_Activitiy_Status_[9,0,0]: x_(9,0,0,0) <= 1
 Task_Activitiy_Status_[9,0,1]: x_(9,0,0,1) <= 1
 Task_Activitiy_Status_[9,0,2]: x_(9,0,0,2) <= 1
 Task_Activitiy_Status_[9,0,3]: x_(9,0,0,3) <= 1
 Task_Activitiy_Status_[9,0,4]: x_(9,0,0,4) <= 1
 Task_Activitiy_Status_[10,0,0]: x_(10,0,0,0) <= 1
 Task_Activitiy_Status_[10,0,1]: x_(10,0,0,1) <= 1
 Task_Activitiy_Status_[10,0,2]: x_(10,0,0,2) <= 1
 Task_Activitiy_Status_[10,0,3]: x_(10,0,0,3) <= 1
 Task_Activitiy_Status_[10,0,4]: x_(10,0,0,4) <= 1
 Task_Activitiy_Status_[11,0,0]: x_(11,0,0,0) <= 1
 Task_Activitiy_Status_[11,0,1]: x_(11,0,0,1) <= 1
 Task_Activitiy_Status_[11,0,2]: x_(11,0,0,2) <= 1
 Task_Activitiy_Status_[11,0,3]: x_(11,0,0,3) <= 1
 Task_Activitiy_Status_[11,0,4]: x_(11,0,0,4) <= 1
 Task_Activitiy_Status_[12,0,0]: x_(12,0,0,0) <= 1
 Task_Activitiy_Status_[12,0,1]: x_(12,0,0,1) <= 1
 Task_Activitiy_Status_[12,0,2]: x_(12,0,0,2) <= 1
 Task_Activitiy_Status_[12,0,3]: x_(12,0,0,3) <= 1
 Task_Activitiy_Status_[12,0,4]: x_(12,0,0,4) <= 1
 Task_Activitiy_Status_[13,0,0]: x_(13,0,0,0) <= 1
 Task_Activitiy_Status_[13,0,1]: x_(13,0,0,1) <= 1
 Task_Activitiy_Status_[13,0,2]: x_(13,0,0,2) <= 1
 Task_Activitiy_Status_[13,0,3]: x_(13,0,0,3) <= 1
 Task_Activitiy_Status_[13,0,4]: x_(13,0,0,4) <= 1
 Task_Activitiy_Status_[14,0,0]: x_(14,0,0,0) <= 1
 Task_Activitiy_Status_[14,0,1]: x_(14,0,0,1) <= 1
 Task_Activitiy_Status_[14,0,2]: x_(14,0,0,2) <= 1
 Task_Activitiy_Status_[14,0,3]: x_(14,0,0,3) <= 1
 Task_Activitiy_Status_[14,0,4]: x_(14,0,0,4) <= 1
 Task_Activitiy_Status_[15,0,0]: x_(15,0,0,0) <= 1
 Task_Activitiy_Status_[15,0,1]: x_(15,0,0,1) <= 1
 Task_Activitiy_Status_[15,0,2]: x_(15,0,0,2) <= 1
 Task_Activitiy_Status_[15,0,3]: x_(15,0,0,3) <= 1
 Task_Activitiy_Status_[15,0,4]: x_(15,0,0,4) <= 1
 Task_Activitiy_Status_[16,0,0]: x_(16,0,0,0) <= 1
 Task_Activitiy_Status_[16,0,1]: x_(16,0,0,1) <= 1
 Task_Activitiy_Status_[16,0,2]: x_(16,0,0,2) <= 1
 Task_Activitiy_Status_[16,0,3]: x_(16,0,0,3) <= 1
 Task_Activitiy_Status_[16,0,4]: x_(16,0,0,4) <= 1
 Task_Activitiy_Status_[17,0,0]: x_(17,0,0,0) <= 1
 Task_Activitiy_Status_[17,0,1]: x_(17,0,0,1) <= 1
 Task_Activitiy_Status_[17,0,2]: x_(17,0,0,2) <= 1
 Task_Activitiy_Status_[17,0,3]: x_(17,0,0,3) <= 1
 Task_Activitiy_Status_[17,0,4]: x_(17,0,0,4) <= 1
 Task_Activitiy_Status_[18,0,0]: x_(18,0,0,0) <= 1
 Task_Activitiy_Status_[18,0,1]: x_(18,0,0,1) <= 1
 Task_Activitiy_Status_[18,0,2]: x_(18,0,0,2) <= 1
 Task_Activitiy_Status_[18,0,3]: x_(18,0,0,3) <= 1
 Task_Activitiy_Status_[18,0,4]: x_(18,0,0,4) <= 1
 Task_Activitiy_Status_[19,0,0]: x_(19,0,0,0) <= 1
 Task_Activitiy_Status_[19,0,1]: x_(19,0,0,1) <= 1
 Task_Activitiy_Status_[19,0,2]: x_(19,0,0,2) <= 1
 Task_Activitiy_Status_[19,0,3]: x_(19,0,0,3) <= 1
 Task_Activitiy_Status_[19,0,4]: x_(19,0,0,4) <= 1
 Task_Activitiy_Status_[20,0,0]: x_(20,0,0,0) <= 1
 Task_Activitiy_Status_[20,0,1]: x_(20,0,0,1) <= 1
 Task_Activitiy_Status_[20,0,2]: x_(20,0,0,2) <= 1
 Task_Activitiy_Status_[20,0,3]: x_(20,0,0,3) <= 1
 Task_Activitiy_Status_[20,0,4]: x_(20,0,0,4) <= 1
 Task_Activitiy_Status_[21,0,0]: x_(21,0,0,0) <= 1
 Task_Activitiy_Status_[21,0,1]: x_(21,0,0,1) <= 1
 Task_Activitiy_Status_[21,0,2]: x_(21,0,0,2) <= 1
 Task_Activitiy_Status_[21,0,3]: x_(21,0,0,3) <= 1
 Task_Activitiy_Status_[21,0,4]: x_(21,0,0,4) <= 1
 Task_Activitiy_Status_[22,0,0]: x_(22,0,0,0) <= 1
 Task_Activitiy_Status_[22,0,1]: x_(22,0,0,1) <= 1
 Task_Activitiy_Status_[22,0,2]: x_(22,0,0,2) <= 1
 Task_Activitiy_Status_[22,0,3]: x_(22,0,0,3) <= 1
 Task_Activitiy_Status_[22,0,4]: x_(22,0,0,4) <= 1
 Task_Activitiy_Status_[23,0,0]: x_(23,0,0,0) <= 1
 Task_Activitiy_Status_[23,0,1]: x_(23,0,0,1) <= 1
 Task_Activitiy_Status_[23,0,2]: x_(23,0,0,2) <= 1
 Task_Activitiy_Status_[23,0,3]: x_(23,0,0,3) <= 1
 Task_Activitiy_Status_[23,0,4]: x_(23,0,0,4) <= 1
 Nav_Activitiy_Status_[0,0,0]: x_(0,0,0,0) + x_(0,0,0,1) + x_(0,0,0,2)
   + x_(0,0,0,3) + x_(0,0,0,4) - Robot_Navigation_state[0,0,0] >= 0
 Nav_Activitiy_Status_[1,0,0]: x_(1,0,0,0) + x_(1,0,0,1) + x_(1,0,0,2)
   + x_(1,0,0,3) + x_(1,0,0,4) - Robot_Navigation_state[1,0,0] >= 0
 Nav_Activitiy_Status_[2,0,0]: x_(2,0,0,0) + x_(2,0,0,1) + x_(2,0,0,2)
   + x_(2,0,0,3) + x_(2,0,0,4) - Robot_Navigation_state[2,0,0] >= 0
 Nav_Activitiy_Status_[3,0,0]: x_(3,0,0,0) + x_(3,0,0,1) + x_(3,0,0,2)
   + x_(3,0,0,3) + x_(3,0,0,4) - Robot_Navigation_state[3,0,0] >= 0
 Nav_Activitiy_Status_[4,0,0]: x_(4,0,0,0) + x_(4,0,0,1) + x_(4,0,0,2)
   + x_(4,0,0,3) + x_(4,0,0,4) - Robot_Navigation_state[4,0,0] >= 0
 Nav_Activitiy_Status_[5,0,0]: x_(5,0,0,0) + x_(5,0,0,1) + x_(5,0,0,2)
   + x_(5,0,0,3) + x_(5,0,0,4) - Robot_Navigation_state[5,0,0] >= 0
 Nav_Activitiy_Status_[6,0,0]: x_(6,0,0,0) + x_(6,0,0,1) + x_(6,0,0,2)
   + x_(6,0,0,3) + x_(6,0,0,4) - Robot_Navigation_state[6,0,0] >= 0
 Nav_Activitiy_Status_[7,0,0]: x_(7,0,0,0) + x_(7,0,0,1) + x_(7,0,0,2)
   + x_(7,0,0,3) + x_(7,0,0,4) - Robot_Navigation_state[7,0,0] >= 0
 Nav_Activitiy_Status_[8,0,0]: x_(8,0,0,0) + x_(8,0,0,1) + x_(8,0,0,2)
   + x_(8,0,0,3) + x_(8,0,0,4) - Robot_Navigation_state[8,0,0] >= 0
 Nav_Activitiy_Status_[9,0,0]: x_(9,0,0,0) + x_(9,0,0,1) + x_(9,0,0,2)
   + x_(9,0,0,3) + x_(9,0,0,4) - Robot_Navigation_state[9,0,0] >= 0
 Nav_Activitiy_Status_[10,0,0]: x_(10,0,0,0) + x_(10,0,0,1) + x_(10,0,0,2)
   + x_(10,0,0,3) + x_(10,0,0,4) - Robot_Navigation_state[10,0,0] >= 0
 Nav_Activitiy_Status_[11,0,0]: x_(11,0,0,0) + x_(11,0,0,1) + x_(11,0,0,2)
   + x_(11,0,0,3) + x_(11,0,0,4) - Robot_Navigation_state[11,0,0] >= 0
 Nav_Activitiy_Status_[12,0,0]: x_(12,0,0,0) + x_(12,0,0,1) + x_(12,0,0,2)
   + x_(12,0,0,3) + x_(12,0,0,4) - Robot_Navigation_state[12,0,0] >= 0
 Nav_Activitiy_Status_[13,0,0]: x_(13,0,0,0) + x_(13,0,0,1) + x_(13,0,0,2)
   + x_(13,0,0,3) + x_(13,0,0,4) - Robot_Navigation_state[13,0,0] >= 0
 Nav_Activitiy_Status_[14,0,0]: x_(14,0,0,0) + x_(14,0,0,1) + x_(14,0,0,2)
   + x_(14,0,0,3) + x_(14,0,0,4) - Robot_Navigation_state[14,0,0] >= 0
 Nav_Activitiy_Status_[15,0,0]: x_(15,0,0,0) + x_(15,0,0,1) + x_(15,0,0,2)
   + x_(15,0,0,3) + x_(15,0,0,4) - Robot_Navigation_state[15,0,0] >= 0
 Nav_Activitiy_Status_[16,0,0]: x_(16,0,0,0) + x_(16,0,0,1) + x_(16,0,0,2)
   + x_(16,0,0,3) + x_(16,0,0,4) - Robot_Navigation_state[16,0,0] >= 0
 Nav_Activitiy_Status_[17,0,0]: x_(17,0,0,0) + x_(17,0,0,1) + x_(17,0,0,2)
   + x_(17,0,0,3) + x_(17,0,0,4) - Robot_Navigation_state[17,0,0] >= 0
 Nav_Activitiy_Status_[18,0,0]: x_(18,0,0,0) + x_(18,0,0,1) + x_(18,0,0,2)
   + x_(18,0,0,3) + x_(18,0,0,4) - Robot_Navigation_state[18,0,0] >= 0
 Nav_Activitiy_Status_[19,0,0]: x_(19,0,0,0) + x_(19,0,0,1) + x_(19,0,0,2)
   + x_(19,0,0,3) + x_(19,0,0,4) - Robot_Navigation_state[19,0,0] >= 0
 Nav_Activitiy_Status_[20,0,0]: x_(20,0,0,0) + x_(20,0,0,1) + x_(20,0,0,2)
   + x_(20,0,0,3) + x_(20,0,0,4) - Robot_Navigation_state[20,0,0] >= 0
 Nav_Activitiy_Status_[21,0,0]: x_(21,0,0,0) + x_(21,0,0,1) + x_(21,0,0,2)
   + x_(21,0,0,3) + x_(21,0,0,4) - Robot_Navigation_state[21,0,0] >= 0
 Nav_Activitiy_Status_[22,0,0]: x_(22,0,0,0) + x_(22,0,0,1) + x_(22,0,0,2)
   + x_(22,0,0,3) + x_(22,0,0,4) - Robot_Navigation_state[22,0,0] >= 0
 Nav_Activitiy_Status_[23,0,0]: x_(23,0,0,0) + x_(23,0,0,1) + x_(23,0,0,2)
   + x_(23,0,0,3) + x_(23,0,0,4) - Robot_Navigation_state[23,0,0] >= 0
 State_consistency_[0,0,0,0]: x_(0,0,0,0) <= 1
 State_consistency_[0,0,0,1]: x_(0,0,0,1) <= 1
 State_consistency_[0,0,0,2]: x_(0,0,0,2) <= 1
 State_consistency_[0,0,0,3]: x_(0,0,0,3) <= 1
 State_consistency_[0,0,0,4]: x_(0,0,0,4) <= 1
 State_consistency_[1,0,0,0]: x_(1,0,0,0) <= 1
 State_consistency_[1,0,0,1]: x_(1,0,0,1) <= 1
 State_consistency_[1,0,0,2]: x_(1,0,0,2) <= 1
 State_consistency_[1,0,0,3]: x_(1,0,0,3) <= 1
 State_consistency_[1,0,0,4]: x_(1,0,0,4) <= 1
 State_consistency_[2,0,0,0]: x_(2,0,0,0) <= 1
 State_consistency_[2,0,0,1]: x_(2,0,0,1) <= 1
 State_consistency_[2,0,0,2]: x_(2,0,0,2) <= 1
 State_consistency_[2,0,0,3]: x_(2,0,0,3) <= 1
 State_consistency_[2,0,0,4]: x_(2,0,0,4) <= 1
 State_consistency_[3,0,0,0]: x_(3,0,0,0) <= 1
 State_consistency_[3,0,0,1]: x_(3,0,0,1) <= 1
 State_consistency_[3,0,0,2]: x_(3,0,0,2) <= 1
 State_consistency_[3,0,0,3]: x_(3,0,0,3) <= 1
 State_consistency_[3,0,0,4]: x_(3,0,0,4) <= 1
 State_consistency_[4,0,0,0]: x_(4,0,0,0) <= 1
 State_consistency_[4,0,0,1]: x_(4,0,0,1) <= 1
 State_consistency_[4,0,0,2]: x_(4,0,0,2) <= 1
 State_consistency_[4,0,0,3]: x_(4,0,0,3) <= 1
 State_consistency_[4,0,0,4]: x_(4,0,0,4) <= 1
 State_consistency_[5,0,0,0]: x_(5,0,0,0) <= 1
 State_consistency_[5,0,0,1]: x_(5,0,0,1) <= 1
 State_consistency_[5,0,0,2]: x_(5,0,0,2) <= 1
 State_consistency_[5,0,0,3]: x_(5,0,0,3) <= 1
 State_consistency_[5,0,0,4]: x_(5,0,0,4) <= 1
 State_consistency_[6,0,0,0]: x_(6,0,0,0) <= 1
 State_consistency_[6,0,0,1]: x_(6,0,0,1) <= 1
 State_consistency_[6,0,0,2]: x_(6,0,0,2) <= 1
 State_consistency_[6,0,0,3]: x_(6,0,0,3) <= 1
 State_consistency_[6,0,0,4]: x_(6,0,0,4) <= 1
 State_consistency_[7,0,0,0]: x_(7,0,0,0) <= 1
 State_consistency_[7,0,0,1]: x_(7,0,0,1) <= 1
 State_consistency_[7,0,0,2]: x_(7,0,0,2) <= 1
 State_consistency_[7,0,0,3]: x_(7,0,0,3) <= 1
 State_consistency_[7,0,0,4]: x_(7,0,0,4) <= 1
 State_consistency_[8,0,0,0]: x_(8,0,0,0) <= 1
 State_consistency_[8,0,0,1]: x_(8,0,0,1) <= 1
 State_consistency_[8,0,0,2]: x_(8,0,0,2) <= 1
 State_consistency_[8,0,0,3]: x_(8,0,0,3) <= 1
 State_consistency_[8,0,0,4]: x_(8,0,0,4) <= 1
 State_consistency_[9,0,0,0]: x_(9,0,0,0) <= 1
 State_consistency_[9,0,0,1]: x_(9,0,0,1) <= 1
 State_consistency_[9,0,0,2]: x_(9,0,0,2) <= 1
 State_consistency_[9,0,0,3]: x_(9,0,0,3) <= 1
 State_consistency_[9,0,0,4]: x_(9,0,0,4) <= 1
 State_consistency_[10,0,0,0]: x_(10,0,0,0) <= 1
 State_consistency_[10,0,0,1]: x_(10,0,0,1) <= 1
 State_consistency_[10,0,0,2]: x_(10,0,0,2) <= 1
 State_consistency_[10,0,0,3]: x_(10,0,0,3) <= 1
 State_consistency_[10,0,0,4]: x_(10,0,0,4) <= 1
 State_consistency_[11,0,0,0]: x_(11,0,0,0) <= 1
 State_consistency_[11,0,0,1]: x_(11,0,0,1) <= 1
 State_consistency_[11,0,0,2]: x_(11,0,0,2) <= 1
 State_consistency_[11,0,0,3]: x_(11,0,0,3) <= 1
 State_consistency_[11,0,0,4]: x_(11,0,0,4) <= 1
 State_consistency_[12,0,0,0]: x_(12,0,0,0) <= 1
 State_consistency_[12,0,0,1]: x_(12,0,0,1) <= 1
 State_consistency_[12,0,0,2]: x_(12,0,0,2) <= 1
 State_consistency_[12,0,0,3]: x_(12,0,0,3) <= 1
 State_consistency_[12,0,0,4]: x_(12,0,0,4) <= 1
 State_consistency_[13,0,0,0]: x_(13,0,0,0) <= 1
 State_consistency_[13,0,0,1]: x_(13,0,0,1) <= 1
 State_consistency_[13,0,0,2]: x_(13,0,0,2) <= 1
 State_consistency_[13,0,0,3]: x_(13,0,0,3) <= 1
 State_consistency_[13,0,0,4]: x_(13,0,0,4) <= 1
 State_consistency_[14,0,0,0]: x_(14,0,0,0) <= 1
 State_consistency_[14,0,0,1]: x_(14,0,0,1) <= 1
 State_consistency_[14,0,0,2]: x_(14,0,0,2) <= 1
 State_consistency_[14,0,0,3]: x_(14,0,0,3) <= 1
 State_consistency_[14,0,0,4]: x_(14,0,0,4) <= 1
 State_consistency_[15,0,0,0]: x_(15,0,0,0) <= 1
 State_consistency_[15,0,0,1]: x_(15,0,0,1) <= 1
 State_consistency_[15,0,0,2]: x_(15,0,0,2) <= 1
 State_consistency_[15,0,0,3]: x_(15,0,0,3) <= 1
 State_consistency_[15,0,0,4]: x_(15,0,0,4) <= 1
 State_consistency_[16,0,0,0]: x_(16,0,0,0) <= 1
 State_consistency_[16,0,0,1]: x_(16,0,0,1) <= 1
 State_consistency_[16,0,0,2]: x_(16,0,0,2) <= 1
 State_consistency_[16,0,0,3]: x_(16,0,0,3) <= 1
 State_consistency_[16,0,0,4]: x_(16,0,0,4) <= 1
 State_consistency_[17,0,0,0]: x_(17,0,0,0) <= 1
 State_consistency_[17,0,0,1]: x_(17,0,0,1) <= 1
 State_consistency_[17,0,0,2]: x_(17,0,0,2) <= 1
 State_consistency_[17,0,0,3]: x_(17,0,0,3) <= 1
 State_consistency_[17,0,0,4]: x_(17,0,0,4) <= 1
 State_consistency_[18,0,0,0]: x_(18,0,0,0) <= 1
 State_consistency_[18,0,0,1]: x_(18,0,0,1) <= 1
 State_consistency_[18,0,0,2]: x_(18,0,0,2) <= 1
 State_consistency_[18,0,0,3]: x_(18,0,0,3) <= 1
 State_consistency_[18,0,0,4]: x_(18,0,0,4) <= 1
 State_consistency_[19,0,0,0]: x_(19,0,0,0) <= 1
 State_consistency_[19,0,0,1]: x_(19,0,0,1) <= 1
 State_consistency_[19,0,0,2]: x_(19,0,0,2) <= 1
 State_consistency_[19,0,0,3]: x_(19,0,0,3) <= 1
 State_consistency_[19,0,0,4]: x_(19,0,0,4) <= 1
 State_consistency_[20,0,0,0]: x_(20,0,0,0) <= 1
 State_consistency_[20,0,0,1]: x_(20,0,0,1) <= 1
 State_consistency_[20,0,0,2]: x_(20,0,0,2) <= 1
 State_consistency_[20,0,0,3]: x_(20,0,0,3) <= 1
 State_consistency_[20,0,0,4]: x_(20,0,0,4) <= 1
 State_consistency_[21,0,0,0]: x_(21,0,0,0) <= 1
 State_consistency_[21,0,0,1]: x_(21,0,0,1) <= 1
 State_consistency_[21,0,0,2]: x_(21,0,0,2) <= 1
 State_consistency_[21,0,0,3]: x_(21,0,0,3) <= 1
 State_consistency_[21,0,0,4]: x_(21,0,0,4) <= 1
 State_consistency_[22,0,0,0]: x_(22,0,0,0) <= 1
 State_consistency_[22,0,0,1]: x_(22,0,0,1) <= 1
 State_consistency_[22,0,0,2]: x_(22,0,0,2) <= 1
 State_consistency_[22,0,0,3]: x_(22,0,0,3) <= 1
 State_consistency_[22,0,0,4]: x_(22,0,0,4) <= 1
 State_consistency_[23,0,0,0]: x_(23,0,0,0) <= 1
 State_consistency_[23,0,0,1]: x_(23,0,0,1) <= 1
 State_consistency_[23,0,0,2]: x_(23,0,0,2) <= 1
 State_consistency_[23,0,0,3]: x_(23,0,0,3) <= 1
 State_consistency_[23,0,0,4]: x_(23,0,0,4) <= 1
 MAX_[0,0,0,0]: - x_(0,0,0,0) + Robot_Navigation_state[0,0,0] >= 0
 MAX_[0,0,0,1]: - x_(0,0,0,1) + Robot_Navigation_state[0,0,0] >= 0
 MAX_[0,0,0,2]: - x_(0,0,0,2) + Robot_Navigation_state[0,0,0] >= 0
 MAX_[0,0,0,3]: - x_(0,0,0,3) + Robot_Navigation_state[0,0,0] >= 0
 MAX_[0,0,0,4]: - x_(0,0,0,4) + Robot_Navigation_state[0,0,0] >= 0
 MAX_[1,0,0,0]: - x_(1,0,0,0) + Robot_Navigation_state[1,0,0] >= 0
 MAX_[1,0,0,1]: - x_(1,0,0,1) + Robot_Navigation_state[1,0,0] >= 0
 MAX_[1,0,0,2]: - x_(1,0,0,2) + Robot_Navigation_state[1,0,0] >= 0
 MAX_[1,0,0,3]: - x_(1,0,0,3) + Robot_Navigation_state[1,0,0] >= 0
 MAX_[1,0,0,4]: - x_(1,0,0,4) + Robot_Navigation_state[1,0,0] >= 0
 MAX_[2,0,0,0]: - x_(2,0,0,0) + Robot_Navigation_state[2,0,0] >= 0
 MAX_[2,0,0,1]: - x_(2,0,0,1) + Robot_Navigation_state[2,0,0] >= 0
 MAX_[2,0,0,2]: - x_(2,0,0,2) + Robot_Navigation_state[2,0,0] >= 0
 MAX_[2,0,0,3]: - x_(2,0,0,3) + Robot_Navigation_state[2,0,0] >= 0
 MAX_[2,0,0,4]: - x_(2,0,0,4) + Robot_Navigation_state[2,0,0] >= 0
 MAX_[3,0,0,0]: - x_(3,0,0,0) + Robot_Navigation_state[3,0,0] >= 0
 MAX_[3,0,0,1]: - x_(3,0,0,1) + Robot_Navigation_state[3,0,0] >= 0
 MAX_[3,0,0,2]: - x_(3,0,0,2) + Robot_Navigation_state[3,0,0] >= 0
 MAX_[3,0,0,3]: - x_(3,0,0,3) + Robot_Navigation_state[3,0,0] >= 0
 MAX_[3,0,0,4]: - x_(3,0,0,4) + Robot_Navigation_state[3,0,0] >= 0
 MAX_[4,0,0,0]: - x_(4,0,0,0) + Robot_Navigation_state[4,0,0] >= 0
 MAX_[4,0,0,1]: - x_(4,0,0,1) + Robot_Navigation_state[4,0,0] >= 0
 MAX_[4,0,0,2]: - x_(4,0,0,2) + Robot_Navigation_state[4,0,0] >= 0
 MAX_[4,0,0,3]: - x_(4,0,0,3) + Robot_Navigation_state[4,0,0] >= 0
 MAX_[4,0,0,4]: - x_(4,0,0,4) + Robot_Navigation_state[4,0,0] >= 0
 MAX_[5,0,0,0]: - x_(5,0,0,0) + Robot_Navigation_state[5,0,0] >= 0
 MAX_[5,0,0,1]: - x_(5,0,0,1) + Robot_Navigation_state[5,0,0] >= 0
 MAX_[5,0,0,2]: - x_(5,0,0,2) + Robot_Navigation_state[5,0,0] >= 0
 MAX_[5,0,0,3]: - x_(5,0,0,3) + Robot_Navigation_state[5,0,0] >= 0
 MAX_[5,0,0,4]: - x_(5,0,0,4) + Robot_Navigation_state[5,0,0] >= 0
 MAX_[6,0,0,0]: - x_(6,0,0,0) + Robot_Navigation_state[6,0,0] >= 0
 MAX_[6,0,0,1]: - x_(6,0,0,1) + Robot_Navigation_state[6,0,0] >= 0
 MAX_[6,0,0,2]: - x_(6,0,0,2) + Robot_Navigation_state[6,0,0] >= 0
 MAX_[6,0,0,3]: - x_(6,0,0,3) + Robot_Navigation_state[6,0,0] >= 0
 MAX_[6,0,0,4]: - x_(6,0,0,4) + Robot_Navigation_state[6,0,0] >= 0
 MAX_[7,0,0,0]: - x_(7,0,0,0) + Robot_Navigation_state[7,0,0] >= 0
 MAX_[7,0,0,1]: - x_(7,0,0,1) + Robot_Navigation_state[7,0,0] >= 0
 MAX_[7,0,0,2]: - x_(7,0,0,2) + Robot_Navigation_state[7,0,0] >= 0
 MAX_[7,0,0,3]: - x_(7,0,0,3) + Robot_Navigation_state[7,0,0] >= 0
 MAX_[7,0,0,4]: - x_(7,0,0,4) + Robot_Navigation_state[7,0,0] >= 0
 MAX_[8,0,0,0]: - x_(8,0,0,0) + Robot_Navigation_state[8,0,0] >= 0
 MAX_[8,0,0,1]: - x_(8,0,0,1) + Robot_Navigation_state[8,0,0] >= 0
 MAX_[8,0,0,2]: - x_(8,0,0,2) + Robot_Navigation_state[8,0,0] >= 0
 MAX_[8,0,0,3]: - x_(8,0,0,3) + Robot_Navigation_state[8,0,0] >= 0
 MAX_[8,0,0,4]: - x_(8,0,0,4) + Robot_Navigation_state[8,0,0] >= 0
 MAX_[9,0,0,0]: - x_(9,0,0,0) + Robot_Navigation_state[9,0,0] >= 0
 MAX_[9,0,0,1]: - x_(9,0,0,1) + Robot_Navigation_state[9,0,0] >= 0
 MAX_[9,0,0,2]: - x_(9,0,0,2) + Robot_Navigation_state[9,0,0] >= 0
 MAX_[9,0,0,3]: - x_(9,0,0,3) + Robot_Navigation_state[9,0,0] >= 0
 MAX_[9,0,0,4]: - x_(9,0,0,4) + Robot_Navigation_state[9,0,0] >= 0
 MAX_[10,0,0,0]: - x_(10,0,0,0) + Robot_Navigation_state[10,0,0] >= 0
 MAX_[10,0,0,1]: - x_(10,0,0,1) + Robot_Navigation_state[10,0,0] >= 0
 MAX_[10,0,0,2]: - x_(10,0,0,2) + Robot_Navigation_state[10,0,0] >= 0
 MAX_[10,0,0,3]: - x_(10,0,0,3) + Robot_Navigation_state[10,0,0] >= 0
 MAX_[10,0,0,4]: - x_(10,0,0,4) + Robot_Navigation_state[10,0,0] >= 0
 MAX_[11,0,0,0]: - x_(11,0,0,0) + Robot_Navigation_state[11,0,0] >= 0
 MAX_[11,0,0,1]: - x_(11,0,0,1) + Robot_Navigation_state[11,0,0] >= 0
 MAX_[11,0,0,2]: - x_(11,0,0,2) + Robot_Navigation_state[11,0,0] >= 0
 MAX_[11,0,0,3]: - x_(11,0,0,3) + Robot_Navigation_state[11,0,0] >= 0
 MAX_[11,0,0,4]: - x_(11,0,0,4) + Robot_Navigation_state[11,0,0] >= 0
 MAX_[12,0,0,0]: - x_(12,0,0,0) + Robot_Navigation_state[12,0,0] >= 0
 MAX_[12,0,0,1]: - x_(12,0,0,1) + Robot_Navigation_state[12,0,0] >= 0
 MAX_[12,0,0,2]: - x_(12,0,0,2) + Robot_Navigation_state[12,0,0] >= 0
 MAX_[12,0,0,3]: - x_(12,0,0,3) + Robot_Navigation_state[12,0,0] >= 0
 MAX_[12,0,0,4]: - x_(12,0,0,4) + Robot_Navigation_state[12,0,0] >= 0
 MAX_[13,0,0,0]: - x_(13,0,0,0) + Robot_Navigation_state[13,0,0] >= 0
 MAX_[13,0,0,1]: - x_(13,0,0,1) + Robot_Navigation_state[13,0,0] >= 0
 MAX_[13,0,0,2]: - x_(13,0,0,2) + Robot_Navigation_state[13,0,0] >= 0
 MAX_[13,0,0,3]: - x_(13,0,0,3) + Robot_Navigation_state[13,0,0] >= 0
 MAX_[13,0,0,4]: - x_(13,0,0,4) + Robot_Navigation_state[13,0,0] >= 0
 MAX_[14,0,0,0]: - x_(14,0,0,0) + Robot_Navigation_state[14,0,0] >= 0
 MAX_[14,0,0,1]: - x_(14,0,0,1) + Robot_Navigation_state[14,0,0] >= 0
 MAX_[14,0,0,2]: - x_(14,0,0,2) + Robot_Navigation_state[14,0,0] >= 0
 MAX_[14,0,0,3]: - x_(14,0,0,3) + Robot_Navigation_state[14,0,0] >= 0
 MAX_[14,0,0,4]: - x_(14,0,0,4) + Robot_Navigation_state[14,0,0] >= 0
 MAX_[15,0,0,0]: - x_(15,0,0,0) + Robot_Navigation_state[15,0,0] >= 0
 MAX_[15,0,0,1]: - x_(15,0,0,1) + Robot_Navigation_state[15,0,0] >= 0
 MAX_[15,0,0,2]: - x_(15,0,0,2) + Robot_Navigation_state[15,0,0] >= 0
 MAX_[15,0,0,3]: - x_(15,0,0,3) + Robot_Navigation_state[15,0,0] >= 0
 MAX_[15,0,0,4]: - x_(15,0,0,4) + Robot_Navigation_state[15,0,0] >= 0
 MAX_[16,0,0,0]: - x_(16,0,0,0) + Robot_Navigation_state[16,0,0] >= 0
 MAX_[16,0,0,1]: - x_(16,0,0,1) + Robot_Navigation_state[16,0,0] >= 0
 MAX_[16,0,0,2]: - x_(16,0,0,2) + Robot_Navigation_state[16,0,0] >= 0
 MAX_[16,0,0,3]: - x_(16,0,0,3) + Robot_Navigation_state[16,0,0] >= 0
 MAX_[16,0,0,4]: - x_(16,0,0,4) + Robot_Navigation_state[16,0,0] >= 0
 MAX_[17,0,0,0]: - x_(17,0,0,0) + Robot_Navigation_state[17,0,0] >= 0
 MAX_[17,0,0,1]: - x_(17,0,0,1) + Robot_Navigation_state[17,0,0] >= 0
 MAX_[17,0,0,2]: - x_(17,0,0,2) + Robot_Navigation_state[17,0,0] >= 0
 MAX_[17,0,0,3]: - x_(17,0,0,3) + Robot_Navigation_state[17,0,0] >= 0
 MAX_[17,0,0,4]: - x_(17,0,0,4) + Robot_Navigation_state[17,0,0] >= 0
 MAX_[18,0,0,0]: - x_(18,0,0,0) + Robot_Navigation_state[18,0,0] >= 0
 MAX_[18,0,0,1]: - x_(18,0,0,1) + Robot_Navigation_state[18,0,0] >= 0
 MAX_[18,0,0,2]: - x_(18,0,0,2) + Robot_Navigation_state[18,0,0] >= 0
 MAX_[18,0,0,3]: - x_(18,0,0,3) + Robot_Navigation_state[18,0,0] >= 0
 MAX_[18,0,0,4]: - x_(18,0,0,4) + Robot_Navigation_state[18,0,0] >= 0
 MAX_[19,0,0,0]: - x_(19,0,0,0) + Robot_Navigation_state[19,0,0] >= 0
 MAX_[19,0,0,1]: - x_(19,0,0,1) + Robot_Navigation_state[19,0,0] >= 0
 MAX_[19,0,0,2]: - x_(19,0,0,2) + Robot_Navigation_state[19,0,0] >= 0
 MAX_[19,0,0,3]: - x_(19,0,0,3) + Robot_Navigation_state[19,0,0] >= 0
 MAX_[19,0,0,4]: - x_(19,0,0,4) + Robot_Navigation_state[19,0,0] >= 0
 MAX_[20,0,0,0]: - x_(20,0,0,0) + Robot_Navigation_state[20,0,0] >= 0
 MAX_[20,0,0,1]: - x_(20,0,0,1) + Robot_Navigation_state[20,0,0] >= 0
 MAX_[20,0,0,2]: - x_(20,0,0,2) + Robot_Navigation_state[20,0,0] >= 0
 MAX_[20,0,0,3]: - x_(20,0,0,3) + Robot_Navigation_state[20,0,0] >= 0
 MAX_[20,0,0,4]: - x_(20,0,0,4) + Robot_Navigation_state[20,0,0] >= 0
 MAX_[21,0,0,0]: - x_(21,0,0,0) + Robot_Navigation_state[21,0,0] >= 0
 MAX_[21,0,0,1]: - x_(21,0,0,1) + Robot_Navigation_state[21,0,0] >= 0
 MAX_[21,0,0,2]: - x_(21,0,0,2) + Robot_Navigation_state[21,0,0] >= 0
 MAX_[21,0,0,3]: - x_(21,0,0,3) + Robot_Navigation_state[21,0,0] >= 0
 MAX_[21,0,0,4]: - x_(21,0,0,4) + Robot_Navigation_state[21,0,0] >= 0
 MAX_[22,0,0,0]: - x_(22,0,0,0) + Robot_Navigation_state[22,0,0] >= 0
 MAX_[22,0,0,1]: - x_(22,0,0,1) + Robot_Navigation_state[22,0,0] >= 0
 MAX_[22,0,0,2]: - x_(22,0,0,2) + Robot_Navigation_state[22,0,0] >= 0
 MAX_[22,0,0,3]: - x_(22,0,0,3) + Robot_Navigation_state[22,0,0] >= 0
 MAX_[22,0,0,4]: - x_(22,0,0,4) + Robot_Navigation_state[22,0,0] >= 0
 MAX_[23,0,0,0]: - x_(23,0,0,0) + Robot_Navigation_state[23,0,0] >= 0
 MAX_[23,0,0,1]: - x_(23,0,0,1) + Robot_Navigation_state[23,0,0] >= 0
 MAX_[23,0,0,2]: - x_(23,0,0,2) + Robot_Navigation_state[23,0,0] >= 0
 MAX_[23,0,0,3]: - x_(23,0,0,3) + Robot_Navigation_state[23,0,0] >= 0
 MAX_[23,0,0,4]: - x_(23,0,0,4) + Robot_Navigation_state[23,0,0] >= 0
 State_consistency_[0,0,0]: Robot_Navigation_state[0,0,0] + z_(0,0,0) <= 1
 State_consistency_[1,0,0]: Robot_Navigation_state[1,0,0] + z_(1,0,0) <= 1
 State_consistency_[2,0,0]: Robot_Navigation_state[2,0,0] + z_(2,0,0) <= 1
 State_consistency_[3,0,0]: Robot_Navigation_state[3,0,0] + z_(3,0,0) <= 1
 State_consistency_[4,0,0]: Robot_Navigation_state[4,0,0] + z_(4,0,0) <= 1
 State_consistency_[5,0,0]: Robot_Navigation_state[5,0,0] + z_(5,0,0) <= 1
 State_consistency_[6,0,0]: Robot_Navigation_state[6,0,0] + z_(6,0,0) <= 1
 State_consistency_[7,0,0]: Robot_Navigation_state[7,0,0] + z_(7,0,0) <= 1
 State_consistency_[8,0,0]: Robot_Navigation_state[8,0,0] + z_(8,0,0) <= 1
 State_consistency_[9,0,0]: Robot_Navigation_state[9,0,0] + z_(9,0,0) <= 1
 State_consistency_[10,0,0]: Robot_Navigation_state[10,0,0] + z_(10,0,0)
   <= 1
 State_consistency_[11,0,0]: Robot_Navigation_state[11,0,0] + z_(11,0,0)
   <= 1
 State_consistency_[12,0,0]: Robot_Navigation_state[12,0,0] + z_(12,0,0)
   <= 1
 State_consistency_[13,0,0]: Robot_Navigation_state[13,0,0] + z_(13,0,0)
   <= 1
 State_consistency_[14,0,0]: Robot_Navigation_state[14,0,0] + z_(14,0,0)
   <= 1
 State_consistency_[15,0,0]: Robot_Navigation_state[15,0,0] + z_(15,0,0)
   <= 1
 State_consistency_[16,0,0]: Robot_Navigation_state[16,0,0] + z_(16,0,0)
   <= 1
 State_consistency_[17,0,0]: Robot_Navigation_state[17,0,0] + z_(17,0,0)
   <= 1
 State_consistency_[18,0,0]: Robot_Navigation_state[18,0,0] + z_(18,0,0)
   <= 1
 State_consistency_[19,0,0]: Robot_Navigation_state[19,0,0] + z_(19,0,0)
   <= 1
 State_consistency_[20,0,0]: Robot_Navigation_state[20,0,0] + z_(20,0,0)
   <= 1
 State_consistency_[21,0,0]: Robot_Navigation_state[21,0,0] + z_(21,0,0)
   <= 1
 State_consistency_[22,0,0]: Robot_Navigation_state[22,0,0] + z_(22,0,0)
   <= 1
 State_consistency_[23,0,0]: Robot_Navigation_state[23,0,0] + z_(23,0,0)
   <= 1
 Limited_stations_[0]: z_(0,0,0) <= 1
 Limited_stations_[1]: z_(1,0,0) <= 1
 Limited_stations_[2]: z_(2,0,0) <= 1
 Limited_stations_[3]: z_(3,0,0) <= 1
 Limited_stations_[4]: z_(4,0,0) <= 1
 Limited_stations_[5]: z_(5,0,0) <= 1
 Limited_stations_[6]: z_(6,0,0) <= 1
 Limited_stations_[7]: z_(7,0,0) <= 1
 Limited_stations_[8]: z_(8,0,0) <= 1
 Limited_stations_[9]: z_(9,0,0) <= 1
 Limited_stations_[10]: z_(10,0,0) <= 1
 Limited_stations_[11]: z_(11,0,0) <= 1
 Limited_stations_[12]: z_(12,0,0) <= 1
 Limited_stations_[13]: z_(13,0,0) <= 1
 Limited_stations_[14]: z_(14,0,0) <= 1
 Limited_stations_[15]: z_(15,0,0) <= 1
 Limited_stations_[16]: z_(16,0,0) <= 1
 Limited_stations_[17]: z_(17,0,0) <= 1
 Limited_stations_[18]: z_(18,0,0) <= 1
 Limited_stations_[19]: z_(19,0,0) <= 1
 Limited_stations_[20]: z_(20,0,0) <= 1
 Limited_stations_[21]: z_(21,0,0) <= 1
 Limited_stations_[22]: z_(22,0,0) <= 1
 Limited_stations_[23]: z_(23,0,0) <= 1
 Limited_Resource_capacity_[0,0]: 0.3 x_(0,0,0,0) + 0.3 x_(0,0,0,1)
   + 0.3 x_(0,0,0,2) + 0.3 x_(0,0,0,3) + 0.3 x_(0,0,0,4)
   + 0.1 Robot_Navigation_state[0,0,0] <= 2
 Limited_Resource_capacity_[1,0]: 0.3 x_(1,0,0,0) + 0.3 x_(1,0,0,1)
   + 0.3 x_(1,0,0,2) + 0.3 x_(1,0,0,3) + 0.3 x_(1,0,0,4)
   + 0.1 Robot_Navigation_state[1,0,0] <= 2
 Limited_Resource_capacity_[2,0]: 0.3 x_(2,0,0,0) + 0.3 x_(2,0,0,1)
   + 0.3 x_(2,0,0,2) + 0.3 x_(2,0,0,3) + 0.3 x_(2,0,0,4)
   + 0.1 Robot_Navigation_state[2,0,0] <= 2
 Limited_Resource_capacity_[3,0]: 0.3 x_(3,0,0,0) + 0.3 x_(3,0,0,1)
   + 0.3 x_(3,0,0,2) + 0.3 x_(3,0,0,3) + 0.3 x_(3,0,0,4)
   + 0.1 Robot_Navigation_state[3,0,0] <= 2
 Limited_Resource_capacity_[4,0]: 0.3 x_(4,0,0,0) + 0.3 x_(4,0,0,1)
   + 0.3 x_(4,0,0,2) + 0.3 x_(4,0,0,3) + 0.3 x_(4,0,0,4)
   + 0.1 Robot_Navigation_state[4,0,0] <= 2
 Limited_Resource_capacity_[5,0]: 0.3 x_(5,0,0,0) + 0.3 x_(5,0,0,1)
   + 0.3 x_(5,0,0,2) + 0.3 x_(5,0,0,3) + 0.3 x_(5,0,0,4)
   + 0.1 Robot_Navigation_state[5,0,0] <= 2
 Limited_Resource_capacity_[6,0]: 0.3 x_(6,0,0,0) + 0.3 x_(6,0,0,1)
   + 0.3 x_(6,0,0,2) + 0.3 x_(6,0,0,3) + 0.3 x_(6,0,0,4)
   + 0.1 Robot_Navigation_state[6,0,0] <= 2
 Limited_Resource_capacity_[7,0]: 0.3 x_(7,0,0,0) + 0.3 x_(7,0,0,1)
   + 0.3 x_(7,0,0,2) + 0.3 x_(7,0,0,3) + 0.3 x_(7,0,0,4)
   + 0.1 Robot_Navigation_state[7,0,0] <= 2
 Limited_Resource_capacity_[8,0]: 0.3 x_(8,0,0,0) + 0.3 x_(8,0,0,1)
   + 0.3 x_(8,0,0,2) + 0.3 x_(8,0,0,3) + 0.3 x_(8,0,0,4)
   + 0.1 Robot_Navigation_state[8,0,0] <= 2
 Limited_Resource_capacity_[9,0]: 0.3 x_(9,0,0,0) + 0.3 x_(9,0,0,1)
   + 0.3 x_(9,0,0,2) + 0.3 x_(9,0,0,3) + 0.3 x_(9,0,0,4)
   + 0.1 Robot_Navigation_state[9,0,0] <= 2
 Limited_Resource_capacity_[10,0]: 0.3 x_(10,0,0,0) + 0.3 x_(10,0,0,1)
   + 0.3 x_(10,0,0,2) + 0.3 x_(10,0,0,3) + 0.3 x_(10,0,0,4)
   + 0.1 Robot_Navigation_state[10,0,0] <= 2
 Limited_Resource_capacity_[11,0]: 0.3 x_(11,0,0,0) + 0.3 x_(11,0,0,1)
   + 0.3 x_(11,0,0,2) + 0.3 x_(11,0,0,3) + 0.3 x_(11,0,0,4)
   + 0.1 Robot_Navigation_state[11,0,0] <= 2
 Limited_Resource_capacity_[12,0]: 0.3 x_(12,0,0,0) + 0.3 x_(12,0,0,1)
   + 0.3 x_(12,0,0,2) + 0.3 x_(12,0,0,3) + 0.3 x_(12,0,0,4)
   + 0.1 Robot_Navigation_state[12,0,0] <= 2
 Limited_Resource_capacity_[13,0]: 0.3 x_(13,0,0,0) + 0.3 x_(13,0,0,1)
   + 0.3 x_(13,0,0,2) + 0.3 x_(13,0,0,3) + 0.3 x_(13,0,0,4)
   + 0.1 Robot_Navigation_state[13,0,0] <= 2
 Limited_Resource_capacity_[14,0]: 0.3 x_(14,0,0,0) + 0.3 x_(14,0,0,1)
   + 0.3 x_(14,0,0,2) + 0.3 x_(14,0,0,3) + 0.3 x_(14,0,0,4)
   + 0.1 Robot_Navigation_state[14,0,0] <= 2
 Limited_Resource_capacity_[15,0]: 0.3 x_(15,0,0,0) + 0.3 x_(15,0,0,1)
   + 0.3 x_(15,0,0,2) + 0.3 x_(15,0,0,3) + 0.3 x_(15,0,0,4)
   + 0.1 Robot_Navigation_state[15,0,0] <= 2
 Limited_Resource_capacity_[16,0]: 0.3 x_(16,0,0,0) + 0.3 x_(16,0,0,1)
   + 0.3 x_(16,0,0,2) + 0.3 x_(16,0,0,3) + 0.3 x_(16,0,0,4)
   + 0.1 Robot_Navigation_state[16,0,0] <= 2
 Limited_Resource_capacity_[17,0]: 0.3 x_(17,0,0,0) + 0.3 x_(17,0,0,1)
   + 0.3 x_(17,0,0,2) + 0.3 x_(17,0,0,3) + 0.3 x_(17,0,0,4)
   + 0.1 Robot_Navigation_state[17,0,0] <= 2
 Limited_Resource_capacity_[18,0]: 0.3 x_(18,0,0,0) + 0.3 x_(18,0,0,1)
   + 0.3 x_(18,0,0,2) + 0.3 x_(18,0,0,3) + 0.3 x_(18,0,0,4)
   + 0.1 Robot_Navigation_state[18,0,0] <= 2
 Limited_Resource_capacity_[19,0]: 0.3 x_(19,0,0,0) + 0.3 x_(19,0,0,1)
   + 0.3 x_(19,0,0,2) + 0.3 x_(19,0,0,3) + 0.3 x_(19,0,0,4)
   + 0.1 Robot_Navigation_state[19,0,0] <= 2
 Limited_Resource_capacity_[20,0]: 0.3 x_(20,0,0,0) + 0.3 x_(20,0,0,1)
   + 0.3 x_(20,0,0,2) + 0.3 x_(20,0,0,3) + 0.3 x_(20,0,0,4)
   + 0.1 Robot_Navigation_state[20,0,0] <= 2
 Limited_Resource_capacity_[21,0]: 0.3 x_(21,0,0,0) + 0.3 x_(21,0,0,1)
   + 0.3 x_(21,0,0,2) + 0.3 x_(21,0,0,3) + 0.3 x_(21,0,0,4)
   + 0.1 Robot_Navigation_state[21,0,0] <= 2
 Limited_Resource_capacity_[22,0]: 0.3 x_(22,0,0,0) + 0.3 x_(22,0,0,1)
   + 0.3 x_(22,0,0,2) + 0.3 x_(22,0,0,3) + 0.3 x_(22,0,0,4)
   + 0.1 Robot_Navigation_state[22,0,0] <= 2
 Limited_Resource_capacity_[23,0]: 0.3 x_(23,0,0,0) + 0.3 x_(23,0,0,1)
   + 0.3 x_(23,0,0,2) + 0.3 x_(23,0,0,3) + 0.3 x_(23,0,0,4)
   + 0.1 Robot_Navigation_state[23,0,0] <= 2
 Min_Energy_Charge_[0,0]: e_(0,0) >= 55.5
 Min_Energy_Charge_[1,0]: e_(1,0) >= 55.5
 Min_Energy_Charge_[2,0]: e_(2,0) >= 55.5
 Min_Energy_Charge_[3,0]: e_(3,0) >= 55.5
 Min_Energy_Charge_[4,0]: e_(4,0) >= 55.5
 Min_Energy_Charge_[5,0]: e_(5,0) >= 55.5
 Min_Energy_Charge_[6,0]: e_(6,0) >= 55.5
 Min_Energy_Charge_[7,0]: e_(7,0) >= 55.5
 Min_Energy_Charge_[8,0]: e_(8,0) >= 55.5
 Min_Energy_Charge_[9,0]: e_(9,0) >= 55.5
 Min_Energy_Charge_[10,0]: e_(10,0) >= 55.5
 Min_Energy_Charge_[11,0]: e_(11,0) >= 55.5
 Min_Energy_Charge_[12,0]: e_(12,0) >= 55.5
 Min_Energy_Charge_[13,0]: e_(13,0) >= 55.5
 Min_Energy_Charge_[14,0]: e_(14,0) >= 55.5
 Min_Energy_Charge_[15,0]: e_(15,0) >= 55.5
 Min_Energy_Charge_[16,0]: e_(16,0) >= 55.5
 Min_Energy_Charge_[17,0]: e_(17,0) >= 55.5
 Min_Energy_Charge_[18,0]: e_(18,0) >= 55.5
 Min_Energy_Charge_[19,0]: e_(19,0) >= 55.5
 Min_Energy_Charge_[20,0]: e_(20,0) >= 55.5
 Min_Energy_Charge_[21,0]: e_(21,0) >= 55.5
 Min_Energy_Charge_[22,0]: e_(22,0) >= 55.5
 Min_Energy_Charge_[23,0]: e_(23,0) >= 55.5
 Min_Energy_End_[23,0]: e_(23,0) >= 55.5
 Energy_Balance_1[0,0]: e_res_Nav_(0,0) + e_res_Task(0,0) + e_other(0,0)
   - e_charged(0,0) + e_charged_1(0,0) + e_change_max(0,0)
   = 60.9083046390202
 Energy_Charge_[0,0]: e_charged(0,0) - 24.666666716 z_(0,0,0) = 0
 Energy_Res_Task_[0,0]: e_res_Task(0,0) - 0.46588866768964 x_(0,0,0,0)
   - 0.46588866768964 x_(0,0,0,1) - 0.46588866768964 x_(0,0,0,2)
   - 0.46588866768964 x_(0,0,0,3) - 0.46588866768964 x_(0,0,0,4) = 0
 Energy_Res_Nav[0,0]: e_res_Nav_(0,0)
   - 0.203636797205349 Robot_Navigation_state[0,0,0] = 0
 Energy_Other[0,0]: e_other(0,0)
   - 3.500000007 Robot_Navigation_state[0,0,0] = 0
 E_CHANGE_MAX[0,0]: e_change_max(0,0) - 9.35 aux3_(0,0) = 0
 Energy_Balance_1[1,0]: - e_(0,0) + e_res_Nav_(1,0) + e_res_Task(1,0)
   + e_other(1,0) - e_charged(1,0) + e_charged_1(1,0) + e_change_max(1,0)
   = 0
 Energy_Charge_[1,0]: e_charged(1,0) - 24.666666716 z_(1,0,0) = 0
 Energy_Res_Task_[1,0]: e_res_Task(1,0) - 0.46588866768964 x_(1,0,0,0)
   - 0.46588866768964 x_(1,0,0,1) - 0.46588866768964 x_(1,0,0,2)
   - 0.46588866768964 x_(1,0,0,3) - 0.46588866768964 x_(1,0,0,4) = 0
 Energy_Res_Nav[1,0]: e_res_Nav_(1,0)
   - 0.203636797205349 Robot_Navigation_state[1,0,0] = 0
 Energy_Other[1,0]: e_other(1,0)
   - 3.500000007 Robot_Navigation_state[1,0,0] = 0
 E_CHANGE_MAX[1,0]: e_change_max(1,0) - 9.35 aux3_(1,0) = 0
 Energy_Balance_1[2,0]: - e_(1,0) + e_res_Nav_(2,0) + e_res_Task(2,0)
   + e_other(2,0) - e_charged(2,0) + e_charged_1(2,0) + e_change_max(2,0)
   = 0
 Energy_Charge_[2,0]: e_charged(2,0) - 24.666666716 z_(2,0,0) = 0
 Energy_Res_Task_[2,0]: e_res_Task(2,0) - 0.46588866768964 x_(2,0,0,0)
   - 0.46588866768964 x_(2,0,0,1) - 0.46588866768964 x_(2,0,0,2)
   - 0.46588866768964 x_(2,0,0,3) - 0.46588866768964 x_(2,0,0,4) = 0
 Energy_Res_Nav[2,0]: e_res_Nav_(2,0)
   - 0.203636797205349 Robot_Navigation_state[2,0,0] = 0
 Energy_Other[2,0]: e_other(2,0)
   - 3.500000007 Robot_Navigation_state[2,0,0] = 0
 E_CHANGE_MAX[2,0]: e_change_max(2,0) - 9.35 aux3_(2,0) = 0
 Energy_Balance_1[3,0]: - e_(2,0) + e_res_Nav_(3,0) + e_res_Task(3,0)
   + e_other(3,0) - e_charged(3,0) + e_charged_1(3,0) + e_change_max(3,0)
   = 0
 Energy_Charge_[3,0]: e_charged(3,0) - 24.666666716 z_(3,0,0) = 0
 Energy_Res_Task_[3,0]: e_res_Task(3,0) - 0.46588866768964 x_(3,0,0,0)
   - 0.46588866768964 x_(3,0,0,1) - 0.46588866768964 x_(3,0,0,2)
   - 0.46588866768964 x_(3,0,0,3) - 0.46588866768964 x_(3,0,0,4) = 0
 Energy_Res_Nav[3,0]: e_res_Nav_(3,0)
   - 0.203636797205349 Robot_Navigation_state[3,0,0] = 0
 Energy_Other[3,0]: e_other(3,0)
   - 3.500000007 Robot_Navigation_state[3,0,0] = 0
 E_CHANGE_MAX[3,0]: e_change_max(3,0) - 9.35 aux3_(3,0) = 0
 Energy_Balance_1[4,0]: - e_(3,0) + e_res_Nav_(4,0) + e_res_Task(4,0)
   + e_other(4,0) - e_charged(4,0) + e_charged_1(4,0) + e_change_max(4,0)
   = 0
 Energy_Charge_[4,0]: e_charged(4,0) - 24.666666716 z_(4,0,0) = 0
 Energy_Res_Task_[4,0]: e_res_Task(4,0) - 0.46588866768964 x_(4,0,0,0)
   - 0.46588866768964 x_(4,0,0,1) - 0.46588866768964 x_(4,0,0,2)
   - 0.46588866768964 x_(4,0,0,3) - 0.46588866768964 x_(4,0,0,4) = 0
 Energy_Res_Nav[4,0]: e_res_Nav_(4,0)
   - 0.203636797205349 Robot_Navigation_state[4,0,0] = 0
 Energy_Other[4,0]: e_other(4,0)
   - 3.500000007 Robot_Navigation_state[4,0,0] = 0
 E_CHANGE_MAX[4,0]: e_change_max(4,0) - 9.35 aux3_(4,0) = 0
 Energy_Balance_1[5,0]: - e_(4,0) + e_res_Nav_(5,0) + e_res_Task(5,0)
   + e_other(5,0) - e_charged(5,0) + e_charged_1(5,0) + e_change_max(5,0)
   = 0
 Energy_Charge_[5,0]: e_charged(5,0) - 24.666666716 z_(5,0,0) = 0
 Energy_Res_Task_[5,0]: e_res_Task(5,0) - 0.46588866768964 x_(5,0,0,0)
   - 0.46588866768964 x_(5,0,0,1) - 0.46588866768964 x_(5,0,0,2)
   - 0.46588866768964 x_(5,0,0,3) - 0.46588866768964 x_(5,0,0,4) = 0
 Energy_Res_Nav[5,0]: e_res_Nav_(5,0)
   - 0.203636797205349 Robot_Navigation_state[5,0,0] = 0
 Energy_Other[5,0]: e_other(5,0)
   - 3.500000007 Robot_Navigation_state[5,0,0] = 0
 E_CHANGE_MAX[5,0]: e_change_max(5,0) - 9.35 aux3_(5,0) = 0
 Energy_Balance_1[6,0]: - e_(5,0) + e_res_Nav_(6,0) + e_res_Task(6,0)
   + e_other(6,0) - e_charged(6,0) + e_charged_1(6,0) + e_change_max(6,0)
   = 0
 Energy_Charge_[6,0]: e_charged(6,0) - 24.666666716 z_(6,0,0) = 0
 Energy_Res_Task_[6,0]: e_res_Task(6,0) - 0.46588866768964 x_(6,0,0,0)
   - 0.46588866768964 x_(6,0,0,1) - 0.46588866768964 x_(6,0,0,2)
   - 0.46588866768964 x_(6,0,0,3) - 0.46588866768964 x_(6,0,0,4) = 0
 Energy_Res_Nav[6,0]: e_res_Nav_(6,0)
   - 0.203636797205349 Robot_Navigation_state[6,0,0] = 0
 Energy_Other[6,0]: e_other(6,0)
   - 3.500000007 Robot_Navigation_state[6,0,0] = 0
 E_CHANGE_MAX[6,0]: e_change_max(6,0) - 9.35 aux3_(6,0) = 0
 Energy_Balance_1[7,0]: - e_(6,0) + e_res_Nav_(7,0) + e_res_Task(7,0)
   + e_other(7,0) - e_charged(7,0) + e_charged_1(7,0) + e_change_max(7,0)
   = 0
 Energy_Charge_[7,0]: e_charged(7,0) - 24.666666716 z_(7,0,0) = 0
 Energy_Res_Task_[7,0]: e_res_Task(7,0) - 0.46588866768964 x_(7,0,0,0)
   - 0.46588866768964 x_(7,0,0,1) - 0.46588866768964 x_(7,0,0,2)
   - 0.46588866768964 x_(7,0,0,3) - 0.46588866768964 x_(7,0,0,4) = 0
 Energy_Res_Nav[7,0]: e_res_Nav_(7,0)
   - 0.203636797205349 Robot_Navigation_state[7,0,0] = 0
 Energy_Other[7,0]: e_other(7,0)
   - 3.500000007 Robot_Navigation_state[7,0,0] = 0
 E_CHANGE_MAX[7,0]: e_change_max(7,0) - 9.35 aux3_(7,0) = 0
 Energy_Balance_1[8,0]: - e_(7,0) + e_res_Nav_(8,0) + e_res_Task(8,0)
   + e_other(8,0) - e_charged(8,0) + e_charged_1(8,0) + e_change_max(8,0)
   = 0
 Energy_Charge_[8,0]: e_charged(8,0) - 24.666666716 z_(8,0,0) = 0
 Energy_Res_Task_[8,0]: e_res_Task(8,0) - 0.46588866768964 x_(8,0,0,0)
   - 0.46588866768964 x_(8,0,0,1) - 0.46588866768964 x_(8,0,0,2)
   - 0.46588866768964 x_(8,0,0,3) - 0.46588866768964 x_(8,0,0,4) = 0
 Energy_Res_Nav[8,0]: e_res_Nav_(8,0)
   - 0.203636797205349 Robot_Navigation_state[8,0,0] = 0
 Energy_Other[8,0]: e_other(8,0)
   - 3.500000007 Robot_Navigation_state[8,0,0] = 0
 E_CHANGE_MAX[8,0]: e_change_max(8,0) - 9.35 aux3_(8,0) = 0
 Energy_Balance_1[9,0]: - e_(8,0) + e_res_Nav_(9,0) + e_res_Task(9,0)
   + e_other(9,0) - e_charged(9,0) + e_charged_1(9,0) + e_change_max(9,0)
   = 0
 Energy_Charge_[9,0]: e_charged(9,0) - 24.666666716 z_(9,0,0) = 0
 Energy_Res_Task_[9,0]: e_res_Task(9,0) - 0.46588866768964 x_(9,0,0,0)
   - 0.46588866768964 x_(9,0,0,1) - 0.46588866768964 x_(9,0,0,2)
   - 0.46588866768964 x_(9,0,0,3) - 0.46588866768964 x_(9,0,0,4) = 0
 Energy_Res_Nav[9,0]: e_res_Nav_(9,0)
   - 0.203636797205349 Robot_Navigation_state[9,0,0] = 0
 Energy_Other[9,0]: e_other(9,0)
   - 3.500000007 Robot_Navigation_state[9,0,0] = 0
 E_CHANGE_MAX[9,0]: e_change_max(9,0) - 9.35 aux3_(9,0) = 0
 Energy_Balance_1[10,0]: - e_(9,0) + e_res_Nav_(10,0) + e_res_Task(10,0)
   + e_other(10,0) - e_charged(10,0) + e_charged_1(10,0)
   + e_change_max(10,0) = 0
 Energy_Charge_[10,0]: e_charged(10,0) - 24.666666716 z_(10,0,0) = 0
 Energy_Res_Task_[10,0]: e_res_Task(10,0) - 0.46588866768964 x_(10,0,0,0)
   - 0.46588866768964 x_(10,0,0,1) - 0.46588866768964 x_(10,0,0,2)
   - 0.46588866768964 x_(10,0,0,3) - 0.46588866768964 x_(10,0,0,4) = 0
 Energy_Res_Nav[10,0]: e_res_Nav_(10,0)
   - 0.203636797205349 Robot_Navigation_state[10,0,0] = 0
 Energy_Other[10,0]: e_other(10,0)
   - 3.500000007 Robot_Navigation_state[10,0,0] = 0
 E_CHANGE_MAX[10,0]: e_change_max(10,0) - 9.35 aux3_(10,0) = 0
 Energy_Balance_1[11,0]: - e_(10,0) + e_res_Nav_(11,0) + e_res_Task(11,0)
   + e_other(11,0) - e_charged(11,0) + e_charged_1(11,0)
   + e_change_max(11,0) = 0
 Energy_Charge_[11,0]: e_charged(11,0) - 24.666666716 z_(11,0,0) = 0
 Energy_Res_Task_[11,0]: e_res_Task(11,0) - 0.46588866768964 x_(11,0,0,0)
   - 0.46588866768964 x_(11,0,0,1) - 0.46588866768964 x_(11,0,0,2)
   - 0.46588866768964 x_(11,0,0,3) - 0.46588866768964 x_(11,0,0,4) = 0
 Energy_Res_Nav[11,0]: e_res_Nav_(11,0)
   - 0.203636797205349 Robot_Navigation_state[11,0,0] = 0
 Energy_Other[11,0]: e_other(11,0)
   - 3.500000007 Robot_Navigation_state[11,0,0] = 0
 E_CHANGE_MAX[11,0]: e_change_max(11,0) - 9.35 aux3_(11,0) = 0
 Energy_Balance_1[12,0]: - e_(11,0) + e_res_Nav_(12,0) + e_res_Task(12,0)
   + e_other(12,0) - e_charged(12,0) + e_charged_1(12,0)
   + e_change_max(12,0) = 0
 Energy_Charge_[12,0]: e_charged(12,0) - 24.666666716 z_(12,0,0) = 0
 Energy_Res_Task_[12,0]: e_res_Task(12,0) - 0.46588866768964 x_(12,0,0,0)
   - 0.46588866768964 x_(12,0,0,1) - 0.46588866768964 x_(12,0,0,2)
   - 0.46588866768964 x_(12,0,0,3) - 0.46588866768964 x_(12,0,0,4) = 0
 Energy_Res_Nav[12,0]: e_res_Nav_(12,0)
   - 0.203636797205349 Robot_Navigation_state[12,0,0] = 0
 Energy_Other[12,0]: e_other(12,0)
   - 3.500000007 Robot_Navigation_state[12,0,0] = 0
 E_CHANGE_MAX[12,0]: e_change_max(12,0) - 9.35 aux3_(12,0) = 0
 Energy_Balance_1[13,0]: - e_(12,0) + e_res_Nav_(13,0) + e_res_Task(13,0)
   + e_other(13,0) - e_charged(13,0) + e_charged_1(13,0)
   + e_change_max(13,0) = 0
 Energy_Charge_[13,0]: e_charged(13,0) - 24.666666716 z_(13,0,0) = 0
 Energy_Res_Task_[13,0]: e_res_Task(13,0) - 0.46588866768964 x_(13,0,0,0)
   - 0.46588866768964 x_(13,0,0,1) - 0.46588866768964 x_(13,0,0,2)
   - 0.46588866768964 x_(13,0,0,3) - 0.46588866768964 x_(13,0,0,4) = 0
 Energy_Res_Nav[13,0]: e_res_Nav_(13,0)
   - 0.203636797205349 Robot_Navigation_state[13,0,0] = 0
 Energy_Other[13,0]: e_other(13,0)
   - 3.500000007 Robot_Navigation_state[13,0,0] = 0
 E_CHANGE_MAX[13,0]: e_change_max(13,0) - 9.35 aux3_(13,0) = 0
 Energy_Balance_1[14,0]: - e_(13,0) + e_res_Nav_(14,0) + e_res_Task(14,0)
   + e_other(14,0) - e_charged(14,0) + e_charged_1(14,0)
   + e_change_max(14,0) = 0
 Energy_Charge_[14,0]: e_charged(14,0) - 24.666666716 z_(14,0,0) = 0
 Energy_Res_Task_[14,0]: e_res_Task(14,0) - 0.46588866768964 x_(14,0,0,0)
   - 0.46588866768964 x_(14,0,0,1) - 0.46588866768964 x_(14,0,0,2)
   - 0.46588866768964 x_(14,0,0,3) - 0.46588866768964 x_(14,0,0,4) = 0
 Energy_Res_Nav[14,0]: e_res_Nav_(14,0)
   - 0.203636797205349 Robot_Navigation_state[14,0,0] = 0
 Energy_Other[14,0]: e_other(14,0)
   - 3.500000007 Robot_Navigation_state[14,0,0] = 0
 E_CHANGE_MAX[14,0]: e_change_max(14,0) - 9.35 aux3_(14,0) = 0
 Energy_Balance_1[15,0]: - e_(14,0) + e_res_Nav_(15,0) + e_res_Task(15,0)
   + e_other(15,0) - e_charged(15,0) + e_charged_1(15,0)
   + e_change_max(15,0) = 0
 Energy_Charge_[15,0]: e_charged(15,0) - 24.666666716 z_(15,0,0) = 0
 Energy_Res_Task_[15,0]: e_res_Task(15,0) - 0.46588866768964 x_(15,0,0,0)
   - 0.46588866768964 x_(15,0,0,1) - 0.46588866768964 x_(15,0,0,2)
   - 0.46588866768964 x_(15,0,0,3) - 0.46588866768964 x_(15,0,0,4) = 0
 Energy_Res_Nav[15,0]: e_res_Nav_(15,0)
   - 0.203636797205349 Robot_Navigation_state[15,0,0] = 0
 Energy_Other[15,0]: e_other(15,0)
   - 3.500000007 Robot_Navigation_state[15,0,0] = 0
 E_CHANGE_MAX[15,0]: e_change_max(15,0) - 9.35 aux3_(15,0) = 0
 Energy_Balance_1[16,0]: - e_(15,0) + e_res_Nav_(16,0) + e_res_Task(16,0)
   + e_other(16,0) - e_charged(16,0) + e_charged_1(16,0)
   + e_change_max(16,0) = 0
 Energy_Charge_[16,0]: e_charged(16,0) - 24.666666716 z_(16,0,0) = 0
 Energy_Res_Task_[16,0]: e_res_Task(16,0) - 0.46588866768964 x_(16,0,0,0)
   - 0.46588866768964 x_(16,0,0,1) - 0.46588866768964 x_(16,0,0,2)
   - 0.46588866768964 x_(16,0,0,3) - 0.46588866768964 x_(16,0,0,4) = 0
 Energy_Res_Nav[16,0]: e_res_Nav_(16,0)
   - 0.203636797205349 Robot_Navigation_state[16,0,0] = 0
 Energy_Other[16,0]: e_other(16,0)
   - 3.500000007 Robot_Navigation_state[16,0,0] = 0
 E_CHANGE_MAX[16,0]: e_change_max(16,0) - 9.35 aux3_(16,0) = 0
 Energy_Balance_1[17,0]: - e_(16,0) + e_res_Nav_(17,0) + e_res_Task(17,0)
   + e_other(17,0) - e_charged(17,0) + e_charged_1(17,0)
   + e_change_max(17,0) = 0
 Energy_Charge_[17,0]: e_charged(17,0) - 24.666666716 z_(17,0,0) = 0
 Energy_Res_Task_[17,0]: e_res_Task(17,0) - 0.46588866768964 x_(17,0,0,0)
   - 0.46588866768964 x_(17,0,0,1) - 0.46588866768964 x_(17,0,0,2)
   - 0.46588866768964 x_(17,0,0,3) - 0.46588866768964 x_(17,0,0,4) = 0
 Energy_Res_Nav[17,0]: e_res_Nav_(17,0)
   - 0.203636797205349 Robot_Navigation_state[17,0,0] = 0
 Energy_Other[17,0]: e_other(17,0)
   - 3.500000007 Robot_Navigation_state[17,0,0] = 0
 E_CHANGE_MAX[17,0]: e_change_max(17,0) - 9.35 aux3_(17,0) = 0
 Energy_Balance_1[18,0]: - e_(17,0) + e_res_Nav_(18,0) + e_res_Task(18,0)
   + e_other(18,0) - e_charged(18,0) + e_charged_1(18,0)
   + e_change_max(18,0) = 0
 Energy_Charge_[18,0]: e_charged(18,0) - 24.666666716 z_(18,0,0) = 0
 Energy_Res_Task_[18,0]: e_res_Task(18,0) - 0.46588866768964 x_(18,0,0,0)
   - 0.46588866768964 x_(18,0,0,1) - 0.46588866768964 x_(18,0,0,2)
   - 0.46588866768964 x_(18,0,0,3) - 0.46588866768964 x_(18,0,0,4) = 0
 Energy_Res_Nav[18,0]: e_res_Nav_(18,0)
   - 0.203636797205349 Robot_Navigation_state[18,0,0] = 0
 Energy_Other[18,0]: e_other(18,0)
   - 3.500000007 Robot_Navigation_state[18,0,0] = 0
 E_CHANGE_MAX[18,0]: e_change_max(18,0) - 9.35 aux3_(18,0) = 0
 Energy_Balance_1[19,0]: - e_(18,0) + e_res_Nav_(19,0) + e_res_Task(19,0)
   + e_other(19,0) - e_charged(19,0) + e_charged_1(19,0)
   + e_change_max(19,0) = 0
 Energy_Charge_[19,0]: e_charged(19,0) - 24.666666716 z_(19,0,0) = 0
 Energy_Res_Task_[19,0]: e_res_Task(19,0) - 0.46588866768964 x_(19,0,0,0)
   - 0.46588866768964 x_(19,0,0,1) - 0.46588866768964 x_(19,0,0,2)
   - 0.46588866768964 x_(19,0,0,3) - 0.46588866768964 x_(19,0,0,4) = 0
 Energy_Res_Nav[19,0]: e_res_Nav_(19,0)
   - 0.203636797205349 Robot_Navigation_state[19,0,0] = 0
 Energy_Other[19,0]: e_other(19,0)
   - 3.500000007 Robot_Navigation_state[19,0,0] = 0
 E_CHANGE_MAX[19,0]: e_change_max(19,0) - 9.35 aux3_(19,0) = 0
 Energy_Balance_1[20,0]: - e_(19,0) + e_res_Nav_(20,0) + e_res_Task(20,0)
   + e_other(20,0) - e_charged(20,0) + e_charged_1(20,0)
   + e_change_max(20,0) = 0
 Energy_Charge_[20,0]: e_charged(20,0) - 24.666666716 z_(20,0,0) = 0
 Energy_Res_Task_[20,0]: e_res_Task(20,0) - 0.46588866768964 x_(20,0,0,0)
   - 0.46588866768964 x_(20,0,0,1) - 0.46588866768964 x_(20,0,0,2)
   - 0.46588866768964 x_(20,0,0,3) - 0.46588866768964 x_(20,0,0,4) = 0
 Energy_Res_Nav[20,0]: e_res_Nav_(20,0)
   - 0.203636797205349 Robot_Navigation_state[20,0,0] = 0
 Energy_Other[20,0]: e_other(20,0)
   - 3.500000007 Robot_Navigation_state[20,0,0] = 0
 E_CHANGE_MAX[20,0]: e_change_max(20,0) - 9.35 aux3_(20,0) = 0
 Energy_Balance_1[21,0]: - e_(20,0) + e_res_Nav_(21,0) + e_res_Task(21,0)
   + e_other(21,0) - e_charged(21,0) + e_charged_1(21,0)
   + e_change_max(21,0) = 0
 Energy_Charge_[21,0]: e_charged(21,0) - 24.666666716 z_(21,0,0) = 0
 Energy_Res_Task_[21,0]: e_res_Task(21,0) - 0.46588866768964 x_(21,0,0,0)
   - 0.46588866768964 x_(21,0,0,1) - 0.46588866768964 x_(21,0,0,2)
   - 0.46588866768964 x_(21,0,0,3) - 0.46588866768964 x_(21,0,0,4) = 0
 Energy_Res_Nav[21,0]: e_res_Nav_(21,0)
   - 0.203636797205349 Robot_Navigation_state[21,0,0] = 0
 Energy_Other[21,0]: e_other(21,0)
   - 3.500000007 Robot_Navigation_state[21,0,0] = 0
 E_CHANGE_MAX[21,0]: e_change_max(21,0) - 9.35 aux3_(21,0) = 0
 Energy_Balance_1[22,0]: - e_(21,0) + e_res_Nav_(22,0) + e_res_Task(22,0)
   + e_other(22,0) - e_charged(22,0) + e_charged_1(22,0)
   + e_change_max(22,0) = 0
 Energy_Charge_[22,0]: e_charged(22,0) - 24.666666716 z_(22,0,0) = 0
 Energy_Res_Task_[22,0]: e_res_Task(22,0) - 0.46588866768964 x_(22,0,0,0)
   - 0.46588866768964 x_(22,0,0,1) - 0.46588866768964 x_(22,0,0,2)
   - 0.46588866768964 x_(22,0,0,3) - 0.46588866768964 x_(22,0,0,4) = 0
 Energy_Res_Nav[22,0]: e_res_Nav_(22,0)
   - 0.203636797205349 Robot_Navigation_state[22,0,0] = 0
 Energy_Other[22,0]: e_other(22,0)
   - 3.500000007 Robot_Navigation_state[22,0,0] = 0
 E_CHANGE_MAX[22,0]: e_change_max(22,0) - 9.35 aux3_(22,0) = 0
 Energy_Balance_1[23,0]: - e_(22,0) + e_res_Nav_(23,0) + e_res_Task(23,0)
   + e_other(23,0) - e_charged(23,0) + e_charged_1(23,0)
   + e_change_max(23,0) = 0
 Energy_Charge_[23,0]: e_charged(23,0) - 24.666666716 z_(23,0,0) = 0
 Energy_Res_Task_[23,0]: e_res_Task(23,0) - 0.46588866768964 x_(23,0,0,0)
   - 0.46588866768964 x_(23,0,0,1) - 0.46588866768964 x_(23,0,0,2)
   - 0.46588866768964 x_(23,0,0,3) - 0.46588866768964 x_(23,0,0,4) = 0
 Energy_Res_Nav[23,0]: e_res_Nav_(23,0)
   - 0.203636797205349 Robot_Navigation_state[23,0,0] = 0
 Energy_Other[23,0]: e_other(23,0)
   - 3.500000007 Robot_Navigation_state[23,0,0] = 0
 E_CHANGE_MAX[23,0]: e_change_max(23,0) - 9.35 aux3_(23,0) = 0
 Max_Energy_Stored_[0,0]: e_(0,0) <= 111
 Max_Energy_Stored_[1,0]: e_(1,0) <= 111
 Max_Energy_Stored_[2,0]: e_(2,0) <= 111
 Max_Energy_Stored_[3,0]: e_(3,0) <= 111
 Max_Energy_Stored_[4,0]: e_(4,0) <= 111
 Max_Energy_Stored_[5,0]: e_(5,0) <= 111
 Max_Energy_Stored_[6,0]: e_(6,0) <= 111
 Max_Energy_Stored_[7,0]: e_(7,0) <= 111
 Max_Energy_Stored_[8,0]: e_(8,0) <= 111
 Max_Energy_Stored_[9,0]: e_(9,0) <= 111
 Max_Energy_Stored_[10,0]: e_(10,0) <= 111
 Max_Energy_Stored_[11,0]: e_(11,0) <= 111
 Max_Energy_Stored_[12,0]: e_(12,0) <= 111
 Max_Energy_Stored_[13,0]: e_(13,0) <= 111
 Max_Energy_Stored_[14,0]: e_(14,0) <= 111
 Max_Energy_Stored_[15,0]: e_(15,0) <= 111
 Max_Energy_Stored_[16,0]: e_(16,0) <= 111
 Max_Energy_Stored_[17,0]: e_(17,0) <= 111
 Max_Energy_Stored_[18,0]: e_(18,0) <= 111
 Max_Energy_Stored_[19,0]: e_(19,0) <= 111
 Max_Energy_Stored_[20,0]: e_(20,0) <= 111
 Max_Energy_Stored_[21,0]: e_(21,0) <= 111
 Max_Energy_Stored_[22,0]: e_(22,0) <= 111
 Max_Energy_Stored_[23,0]: e_(23,0) <= 111
 Aux_[0,0,0]: - z_(0,0,0) + a_(0,0,0) = 0
 Aux3_[0,0,0]: aux1_(0,0) >= 0.0487234652163982
 Aux3_[0,0,0]: aux1_(0,0) >= -0.0487234652163982
 Aux2_[0,0,0]: b_(0,0,0) = 0
 Aux4_[0,0,0]: aux2_(0,0) >= 0.4512765347836018
 Aux4_[0,0,0]: aux2_(0,0) >= -0.4512765347836018
 Aux3_[1,0,0]: - 0.00900900900900901 e_(0,0) + aux1_(1,0) >= -0.5
 Aux3_[1,0,0]: 0.00900900900900901 e_(0,0) + aux1_(1,0) >= 0.5
 Aux4_[1,0,0]: 0.00900900900900901 e_(0,0) + aux2_(1,0) >= 1
 Aux4_[1,0,0]: - 0.00900900900900901 e_(0,0) + aux2_(1,0) >= -1
 Aux3_[2,0,0]: - 0.00900900900900901 e_(1,0) + aux1_(2,0) >= -0.5
 Aux3_[2,0,0]: 0.00900900900900901 e_(1,0) + aux1_(2,0) >= 0.5
 Aux4_[2,0,0]: 0.00900900900900901 e_(1,0) + aux2_(2,0) >= 1
 Aux4_[2,0,0]: - 0.00900900900900901 e_(1,0) + aux2_(2,0) >= -1
 Aux3_[3,0,0]: - 0.00900900900900901 e_(2,0) + aux1_(3,0) >= -0.5
 Aux3_[3,0,0]: 0.00900900900900901 e_(2,0) + aux1_(3,0) >= 0.5
 Aux4_[3,0,0]: 0.00900900900900901 e_(2,0) + aux2_(3,0) >= 1
 Aux4_[3,0,0]: - 0.00900900900900901 e_(2,0) + aux2_(3,0) >= -1
 Aux3_[4,0,0]: - 0.00900900900900901 e_(3,0) + aux1_(4,0) >= -0.5
 Aux3_[4,0,0]: 0.00900900900900901 e_(3,0) + aux1_(4,0) >= 0.5
 Aux4_[4,0,0]: 0.00900900900900901 e_(3,0) + aux2_(4,0) >= 1
 Aux4_[4,0,0]: - 0.00900900900900901 e_(3,0) + aux2_(4,0) >= -1
 Aux3_[5,0,0]: - 0.00900900900900901 e_(4,0) + aux1_(5,0) >= -0.5
 Aux3_[5,0,0]: 0.00900900900900901 e_(4,0) + aux1_(5,0) >= 0.5
 Aux4_[5,0,0]: 0.00900900900900901 e_(4,0) + aux2_(5,0) >= 1
 Aux4_[5,0,0]: - 0.00900900900900901 e_(4,0) + aux2_(5,0) >= -1
 Aux3_[6,0,0]: - 0.00900900900900901 e_(5,0) + aux1_(6,0) >= -0.5
 Aux3_[6,0,0]: 0.00900900900900901 e_(5,0) + aux1_(6,0) >= 0.5
 Aux4_[6,0,0]: 0.00900900900900901 e_(5,0) + aux2_(6,0) >= 1
 Aux4_[6,0,0]: - 0.00900900900900901 e_(5,0) + aux2_(6,0) >= -1
 Aux3_[7,0,0]: - 0.00900900900900901 e_(6,0) + aux1_(7,0) >= -0.5
 Aux3_[7,0,0]: 0.00900900900900901 e_(6,0) + aux1_(7,0) >= 0.5
 Aux4_[7,0,0]: 0.00900900900900901 e_(6,0) + aux2_(7,0) >= 1
 Aux4_[7,0,0]: - 0.00900900900900901 e_(6,0) + aux2_(7,0) >= -1
 Aux3_[8,0,0]: - 0.00900900900900901 e_(7,0) + aux1_(8,0) >= -0.5
 Aux3_[8,0,0]: 0.00900900900900901 e_(7,0) + aux1_(8,0) >= 0.5
 Aux4_[8,0,0]: 0.00900900900900901 e_(7,0) + aux2_(8,0) >= 1
 Aux4_[8,0,0]: - 0.00900900900900901 e_(7,0) + aux2_(8,0) >= -1
 Aux3_[9,0,0]: - 0.00900900900900901 e_(8,0) + aux1_(9,0) >= -0.5
 Aux3_[9,0,0]: 0.00900900900900901 e_(8,0) + aux1_(9,0) >= 0.5
 Aux4_[9,0,0]: 0.00900900900900901 e_(8,0) + aux2_(9,0) >= 1
 Aux4_[9,0,0]: - 0.00900900900900901 e_(8,0) + aux2_(9,0) >= -1
 Aux3_[10,0,0]: - 0.00900900900900901 e_(9,0) + aux1_(10,0) >= -0.5
 Aux3_[10,0,0]: 0.00900900900900901 e_(9,0) + aux1_(10,0) >= 0.5
 Aux4_[10,0,0]: 0.00900900900900901 e_(9,0) + aux2_(10,0) >= 1
 Aux4_[10,0,0]: - 0.00900900900900901 e_(9,0) + aux2_(10,0) >= -1
 Aux3_[11,0,0]: - 0.00900900900900901 e_(10,0) + aux1_(11,0) >= -0.5
 Aux3_[11,0,0]: 0.00900900900900901 e_(10,0) + aux1_(11,0) >= 0.5
 Aux4_[11,0,0]: 0.00900900900900901 e_(10,0) + aux2_(11,0) >= 1
 Aux4_[11,0,0]: - 0.00900900900900901 e_(10,0) + aux2_(11,0) >= -1
 Aux3_[12,0,0]: - 0.00900900900900901 e_(11,0) + aux1_(12,0) >= -0.5
 Aux3_[12,0,0]: 0.00900900900900901 e_(11,0) + aux1_(12,0) >= 0.5
 Aux4_[12,0,0]: 0.00900900900900901 e_(11,0) + aux2_(12,0) >= 1
 Aux4_[12,0,0]: - 0.00900900900900901 e_(11,0) + aux2_(12,0) >= -1
 Aux3_[13,0,0]: - 0.00900900900900901 e_(12,0) + aux1_(13,0) >= -0.5
 Aux3_[13,0,0]: 0.00900900900900901 e_(12,0) + aux1_(13,0) >= 0.5
 Aux4_[13,0,0]: 0.00900900900900901 e_(12,0) + aux2_(13,0) >= 1
 Aux4_[13,0,0]: - 0.00900900900900901 e_(12,0) + aux2_(13,0) >= -1
 Aux3_[14,0,0]: - 0.00900900900900901 e_(13,0) + aux1_(14,0) >= -0.5
 Aux3_[14,0,0]: 0.00900900900900901 e_(13,0) + aux1_(14,0) >= 0.5
 Aux4_[14,0,0]: 0.00900900900900901 e_(13,0) + aux2_(14,0) >= 1
 Aux4_[14,0,0]: - 0.00900900900900901 e_(13,0) + aux2_(14,0) >= -1
 Aux3_[15,0,0]: - 0.00900900900900901 e_(14,0) + aux1_(15,0) >= -0.5
 Aux3_[15,0,0]: 0.00900900900900901 e_(14,0) + aux1_(15,0) >= 0.5
 Aux4_[15,0,0]: 0.00900900900900901 e_(14,0) + aux2_(15,0) >= 1
 Aux4_[15,0,0]: - 0.00900900900900901 e_(14,0) + aux2_(15,0) >= -1
 Aux3_[16,0,0]: - 0.00900900900900901 e_(15,0) + aux1_(16,0) >= -0.5
 Aux3_[16,0,0]: 0.00900900900900901 e_(15,0) + aux1_(16,0) >= 0.5
 Aux4_[16,0,0]: 0.00900900900900901 e_(15,0) + aux2_(16,0) >= 1
 Aux4_[16,0,0]: - 0.00900900900900901 e_(15,0) + aux2_(16,0) >= -1
 Aux3_[17,0,0]: - 0.00900900900900901 e_(16,0) + aux1_(17,0) >= -0.5
 Aux3_[17,0,0]: 0.00900900900900901 e_(16,0) + aux1_(17,0) >= 0.5
 Aux4_[17,0,0]: 0.00900900900900901 e_(16,0) + aux2_(17,0) >= 1
 Aux4_[17,0,0]: - 0.00900900900900901 e_(16,0) + aux2_(17,0) >= -1
 Aux3_[18,0,0]: - 0.00900900900900901 e_(17,0) + aux1_(18,0) >= -0.5
 Aux3_[18,0,0]: 0.00900900900900901 e_(17,0) + aux1_(18,0) >= 0.5
 Aux4_[18,0,0]: 0.00900900900900901 e_(17,0) + aux2_(18,0) >= 1
 Aux4_[18,0,0]: - 0.00900900900900901 e_(17,0) + aux2_(18,0) >= -1
 Aux3_[19,0,0]: - 0.00900900900900901 e_(18,0) + aux1_(19,0) >= -0.5
 Aux3_[19,0,0]: 0.00900900900900901 e_(18,0) + aux1_(19,0) >= 0.5
 Aux4_[19,0,0]: 0.00900900900900901 e_(18,0) + aux2_(19,0) >= 1
 Aux4_[19,0,0]: - 0.00900900900900901 e_(18,0) + aux2_(19,0) >= -1
 Aux3_[20,0,0]: - 0.00900900900900901 e_(19,0) + aux1_(20,0) >= -0.5
 Aux3_[20,0,0]: 0.00900900900900901 e_(19,0) + aux1_(20,0) >= 0.5
 Aux4_[20,0,0]: 0.00900900900900901 e_(19,0) + aux2_(20,0) >= 1
 Aux4_[20,0,0]: - 0.00900900900900901 e_(19,0) + aux2_(20,0) >= -1
 Aux3_[21,0,0]: - 0.00900900900900901 e_(20,0) + aux1_(21,0) >= -0.5
 Aux3_[21,0,0]: 0.00900900900900901 e_(20,0) + aux1_(21,0) >= 0.5
 Aux4_[21,0,0]: 0.00900900900900901 e_(20,0) + aux2_(21,0) >= 1
 Aux4_[21,0,0]: - 0.00900900900900901 e_(20,0) + aux2_(21,0) >= -1
 Aux3_[22,0,0]: - 0.00900900900900901 e_(21,0) + aux1_(22,0) >= -0.5
 Aux3_[22,0,0]: 0.00900900900900901 e_(21,0) + aux1_(22,0) >= 0.5
 Aux4_[22,0,0]: 0.00900900900900901 e_(21,0) + aux2_(22,0) >= 1
 Aux4_[22,0,0]: - 0.00900900900900901 e_(21,0) + aux2_(22,0) >= -1
 Aux3_[23,0,0]: - 0.00900900900900901 e_(22,0) + aux1_(23,0) >= -0.5
 Aux3_[23,0,0]: 0.00900900900900901 e_(22,0) + aux1_(23,0) >= 0.5
 Aux4_[23,0,0]: 0.00900900900900901 e_(22,0) + aux2_(23,0) >= 1
 Aux4_[23,0,0]: - 0.00900900900900901 e_(22,0) + aux2_(23,0) >= -1
 Aux3_[0,0]: - y[0,0,0] + aux3_(0,0) = 0
 Aux3_[1,0]: - y[1,0,0] + aux3_(1,0) = 0
 Aux3_[2,0]: - y[2,0,0] + aux3_(2,0) = 0
 Aux3_[3,0]: - y[3,0,0] + aux3_(3,0) = 0
 Aux3_[4,0]: - y[4,0,0] + aux3_(4,0) = 0
 Aux3_[5,0]: - y[5,0,0] + aux3_(5,0) = 0
 Aux3_[6,0]: - y[6,0,0] + aux3_(6,0) = 0
 Aux3_[7,0]: - y[7,0,0] + aux3_(7,0) = 0
 Aux3_[8,0]: - y[8,0,0] + aux3_(8,0) = 0
 Aux3_[9,0]: - y[9,0,0] + aux3_(9,0) = 0
 Aux3_[10,0]: - y[10,0,0] + aux3_(10,0) = 0
 Aux3_[11,0]: - y[11,0,0] + aux3_(11,0) = 0
 Aux3_[12,0]: - y[12,0,0] + aux3_(12,0) = 0
 Aux3_[13,0]: - y[13,0,0] + aux3_(13,0) = 0
 Aux3_[14,0]: - y[14,0,0] + aux3_(14,0) = 0
 Aux3_[15,0]: - y[15,0,0] + aux3_(15,0) = 0
 Aux3_[16,0]: - y[16,0,0] + aux3_(16,0) = 0
 Aux3_[17,0]: - y[17,0,0] + aux3_(17,0) = 0
 Aux3_[18,0]: - y[18,0,0] + aux3_(18,0) = 0
 Aux3_[19,0]: - y[19,0,0] + aux3_(19,0) = 0
 Aux3_[20,0]: - y[20,0,0] + aux3_(20,0) = 0
 Aux3_[21,0]: - y[21,0,0] + aux3_(21,0) = 0
 Aux3_[22,0]: - y[22,0,0] + aux3_(22,0) = 0
 Aux3_[23,0]: - y[23,0,0] + aux3_(23,0) = 0
 Y_[0,0,0]: - Robot_Navigation_state[0,0,0] + y[0,0,0] <= 0
 Y_[0,0,0]: Robot_Navigation_state[0,0,0] + y[0,0,0] >= 0
 Y_[0,0,0]: - Robot_Navigation_state[0,0,0] + y[0,0,0] >= 0
 Y_[0,0,0]: Robot_Navigation_state[0,0,0] + y[0,0,0] <= 2
 Y_[1,0,0]: - Robot_Navigation_state[0,0,0] - Robot_Navigation_state[1,0,0]
   + y[1,0,0] <= 0
 Y_[1,0,0]: - Robot_Navigation_state[0,0,0] + Robot_Navigation_state[1,0,0]
   + y[1,0,0] >= 0
 Y_[1,0,0]: Robot_Navigation_state[0,0,0] - Robot_Navigation_state[1,0,0]
   + y[1,0,0] >= 0
 Y_[1,0,0]: Robot_Navigation_state[0,0,0] + Robot_Navigation_state[1,0,0]
   + y[1,0,0] <= 2
 Y_[2,0,0]: - Robot_Navigation_state[1,0,0] - Robot_Navigation_state[2,0,0]
   + y[2,0,0] <= 0
 Y_[2,0,0]: - Robot_Navigation_state[1,0,0] + Robot_Navigation_state[2,0,0]
   + y[2,0,0] >= 0
 Y_[2,0,0]: Robot_Navigation_state[1,0,0] - Robot_Navigation_state[2,0,0]
   + y[2,0,0] >= 0
 Y_[2,0,0]: Robot_Navigation_state[1,0,0] + Robot_Navigation_state[2,0,0]
   + y[2,0,0] <= 2
 Y_[3,0,0]: - Robot_Navigation_state[2,0,0] - Robot_Navigation_state[3,0,0]
   + y[3,0,0] <= 0
 Y_[3,0,0]: - Robot_Navigation_state[2,0,0] + Robot_Navigation_state[3,0,0]
   + y[3,0,0] >= 0
 Y_[3,0,0]: Robot_Navigation_state[2,0,0] - Robot_Navigation_state[3,0,0]
   + y[3,0,0] >= 0
 Y_[3,0,0]: Robot_Navigation_state[2,0,0] + Robot_Navigation_state[3,0,0]
   + y[3,0,0] <= 2
 Y_[4,0,0]: - Robot_Navigation_state[3,0,0] - Robot_Navigation_state[4,0,0]
   + y[4,0,0] <= 0
 Y_[4,0,0]: - Robot_Navigation_state[3,0,0] + Robot_Navigation_state[4,0,0]
   + y[4,0,0] >= 0
 Y_[4,0,0]: Robot_Navigation_state[3,0,0] - Robot_Navigation_state[4,0,0]
   + y[4,0,0] >= 0
 Y_[4,0,0]: Robot_Navigation_state[3,0,0] + Robot_Navigation_state[4,0,0]
   + y[4,0,0] <= 2
 Y_[5,0,0]: - Robot_Navigation_state[4,0,0] - Robot_Navigation_state[5,0,0]
   + y[5,0,0] <= 0
 Y_[5,0,0]: - Robot_Navigation_state[4,0,0] + Robot_Navigation_state[5,0,0]
   + y[5,0,0] >= 0
 Y_[5,0,0]: Robot_Navigation_state[4,0,0] - Robot_Navigation_state[5,0,0]
   + y[5,0,0] >= 0
 Y_[5,0,0]: Robot_Navigation_state[4,0,0] + Robot_Navigation_state[5,0,0]
   + y[5,0,0] <= 2
 Y_[6,0,0]: - Robot_Navigation_state[5,0,0] - Robot_Navigation_state[6,0,0]
   + y[6,0,0] <= 0
 Y_[6,0,0]: - Robot_Navigation_state[5,0,0] + Robot_Navigation_state[6,0,0]
   + y[6,0,0] >= 0
 Y_[6,0,0]: Robot_Navigation_state[5,0,0] - Robot_Navigation_state[6,0,0]
   + y[6,0,0] >= 0
 Y_[6,0,0]: Robot_Navigation_state[5,0,0] + Robot_Navigation_state[6,0,0]
   + y[6,0,0] <= 2
 Y_[7,0,0]: - Robot_Navigation_state[6,0,0] - Robot_Navigation_state[7,0,0]
   + y[7,0,0] <= 0
 Y_[7,0,0]: - Robot_Navigation_state[6,0,0] + Robot_Navigation_state[7,0,0]
   + y[7,0,0] >= 0
 Y_[7,0,0]: Robot_Navigation_state[6,0,0] - Robot_Navigation_state[7,0,0]
   + y[7,0,0] >= 0
 Y_[7,0,0]: Robot_Navigation_state[6,0,0] + Robot_Navigation_state[7,0,0]
   + y[7,0,0] <= 2
 Y_[8,0,0]: - Robot_Navigation_state[7,0,0] - Robot_Navigation_state[8,0,0]
   + y[8,0,0] <= 0
 Y_[8,0,0]: - Robot_Navigation_state[7,0,0] + Robot_Navigation_state[8,0,0]
   + y[8,0,0] >= 0
 Y_[8,0,0]: Robot_Navigation_state[7,0,0] - Robot_Navigation_state[8,0,0]
   + y[8,0,0] >= 0
 Y_[8,0,0]: Robot_Navigation_state[7,0,0] + Robot_Navigation_state[8,0,0]
   + y[8,0,0] <= 2
 Y_[9,0,0]: - Robot_Navigation_state[8,0,0] - Robot_Navigation_state[9,0,0]
   + y[9,0,0] <= 0
 Y_[9,0,0]: - Robot_Navigation_state[8,0,0] + Robot_Navigation_state[9,0,0]
   + y[9,0,0] >= 0
 Y_[9,0,0]: Robot_Navigation_state[8,0,0] - Robot_Navigation_state[9,0,0]
   + y[9,0,0] >= 0
 Y_[9,0,0]: Robot_Navigation_state[8,0,0] + Robot_Navigation_state[9,0,0]
   + y[9,0,0] <= 2
 Y_[10,0,0]: - Robot_Navigation_state[9,0,0]
   - Robot_Navigation_state[10,0,0] + y[10,0,0] <= 0
 Y_[10,0,0]: - Robot_Navigation_state[9,0,0]
   + Robot_Navigation_state[10,0,0] + y[10,0,0] >= 0
 Y_[10,0,0]: Robot_Navigation_state[9,0,0] - Robot_Navigation_state[10,0,0]
   + y[10,0,0] >= 0
 Y_[10,0,0]: Robot_Navigation_state[9,0,0] + Robot_Navigation_state[10,0,0]
   + y[10,0,0] <= 2
 Y_[11,0,0]: - Robot_Navigation_state[10,0,0]
   - Robot_Navigation_state[11,0,0] + y[11,0,0] <= 0
 Y_[11,0,0]: - Robot_Navigation_state[10,0,0]
   + Robot_Navigation_state[11,0,0] + y[11,0,0] >= 0
 Y_[11,0,0]: Robot_Navigation_state[10,0,0]
   - Robot_Navigation_state[11,0,0] + y[11,0,0] >= 0
 Y_[11,0,0]: Robot_Navigation_state[10,0,0]
   + Robot_Navigation_state[11,0,0] + y[11,0,0] <= 2
 Y_[12,0,0]: - Robot_Navigation_state[11,0,0]
   - Robot_Navigation_state[12,0,0] + y[12,0,0] <= 0
 Y_[12,0,0]: - Robot_Navigation_state[11,0,0]
   + Robot_Navigation_state[12,0,0] + y[12,0,0] >= 0
 Y_[12,0,0]: Robot_Navigation_state[11,0,0]
   - Robot_Navigation_state[12,0,0] + y[12,0,0] >= 0
 Y_[12,0,0]: Robot_Navigation_state[11,0,0]
   + Robot_Navigation_state[12,0,0] + y[12,0,0] <= 2
 Y_[13,0,0]: - Robot_Navigation_state[12,0,0]
   - Robot_Navigation_state[13,0,0] + y[13,0,0] <= 0
 Y_[13,0,0]: - Robot_Navigation_state[12,0,0]
   + Robot_Navigation_state[13,0,0] + y[13,0,0] >= 0
 Y_[13,0,0]: Robot_Navigation_state[12,0,0]
   - Robot_Navigation_state[13,0,0] + y[13,0,0] >= 0
 Y_[13,0,0]: Robot_Navigation_state[12,0,0]
   + Robot_Navigation_state[13,0,0] + y[13,0,0] <= 2
 Y_[14,0,0]: - Robot_Navigation_state[13,0,0]
   - Robot_Navigation_state[14,0,0] + y[14,0,0] <= 0
 Y_[14,0,0]: - Robot_Navigation_state[13,0,0]
   + Robot_Navigation_state[14,0,0] + y[14,0,0] >= 0
 Y_[14,0,0]: Robot_Navigation_state[13,0,0]
   - Robot_Navigation_state[14,0,0] + y[14,0,0] >= 0
 Y_[14,0,0]: Robot_Navigation_state[13,0,0]
   + Robot_Navigation_state[14,0,0] + y[14,0,0] <= 2
 Y_[15,0,0]: - Robot_Navigation_state[14,0,0]
   - Robot_Navigation_state[15,0,0] + y[15,0,0] <= 0
 Y_[15,0,0]: - Robot_Navigation_state[14,0,0]
   + Robot_Navigation_state[15,0,0] + y[15,0,0] >= 0
 Y_[15,0,0]: Robot_Navigation_state[14,0,0]
   - Robot_Navigation_state[15,0,0] + y[15,0,0] >= 0
 Y_[15,0,0]: Robot_Navigation_state[14,0,0]
   + Robot_Navigation_state[15,0,0] + y[15,0,0] <= 2
 Y_[16,0,0]: - Robot_Navigation_state[15,0,0]
   - Robot_Navigation_state[16,0,0] + y[16,0,0] <= 0
 Y_[16,0,0]: - Robot_Navigation_state[15,0,0]
   + Robot_Navigation_state[16,0,0] + y[16,0,0] >= 0
 Y_[16,0,0]: Robot_Navigation_state[15,0,0]
   - Robot_Navigation_state[16,0,0] + y[16,0,0] >= 0
 Y_[16,0,0]: Robot_Navigation_state[15,0,0]
   + Robot_Navigation_state[16,0,0] + y[16,0,0] <= 2
 Y_[17,0,0]: - Robot_Navigation_state[16,0,0]
   - Robot_Navigation_state[17,0,0] + y[17,0,0] <= 0
 Y_[17,0,0]: - Robot_Navigation_state[16,0,0]
   + Robot_Navigation_state[17,0,0] + y[17,0,0] >= 0
 Y_[17,0,0]: Robot_Navigation_state[16,0,0]
   - Robot_Navigation_state[17,0,0] + y[17,0,0] >= 0
 Y_[17,0,0]: Robot_Navigation_state[16,0,0]
   + Robot_Navigation_state[17,0,0] + y[17,0,0] <= 2
 Y_[18,0,0]: - Robot_Navigation_state[17,0,0]
   - Robot_Navigation_state[18,0,0] + y[18,0,0] <= 0
 Y_[18,0,0]: - Robot_Navigation_state[17,0,0]
   + Robot_Navigation_state[18,0,0] + y[18,0,0] >= 0
 Y_[18,0,0]: Robot_Navigation_state[17,0,0]
   - Robot_Navigation_state[18,0,0] + y[18,0,0] >= 0
 Y_[18,0,0]: Robot_Navigation_state[17,0,0]
   + Robot_Navigation_state[18,0,0] + y[18,0,0] <= 2
 Y_[19,0,0]: - Robot_Navigation_state[18,0,0]
   - Robot_Navigation_state[19,0,0] + y[19,0,0] <= 0
 Y_[19,0,0]: - Robot_Navigation_state[18,0,0]
   + Robot_Navigation_state[19,0,0] + y[19,0,0] >= 0
 Y_[19,0,0]: Robot_Navigation_state[18,0,0]
   - Robot_Navigation_state[19,0,0] + y[19,0,0] >= 0
 Y_[19,0,0]: Robot_Navigation_state[18,0,0]
   + Robot_Navigation_state[19,0,0] + y[19,0,0] <= 2
 Y_[20,0,0]: - Robot_Navigation_state[19,0,0]
   - Robot_Navigation_state[20,0,0] + y[20,0,0] <= 0
 Y_[20,0,0]: - Robot_Navigation_state[19,0,0]
   + Robot_Navigation_state[20,0,0] + y[20,0,0] >= 0
 Y_[20,0,0]: Robot_Navigation_state[19,0,0]
   - Robot_Navigation_state[20,0,0] + y[20,0,0] >= 0
 Y_[20,0,0]: Robot_Navigation_state[19,0,0]
   + Robot_Navigation_state[20,0,0] + y[20,0,0] <= 2
 Y_[21,0,0]: - Robot_Navigation_state[20,0,0]
   - Robot_Navigation_state[21,0,0] + y[21,0,0] <= 0
 Y_[21,0,0]: - Robot_Navigation_state[20,0,0]
   + Robot_Navigation_state[21,0,0] + y[21,0,0] >= 0
 Y_[21,0,0]: Robot_Navigation_state[20,0,0]
   - Robot_Navigation_state[21,0,0] + y[21,0,0] >= 0
 Y_[21,0,0]: Robot_Navigation_state[20,0,0]
   + Robot_Navigation_state[21,0,0] + y[21,0,0] <= 2
 Y_[22,0,0]: - Robot_Navigation_state[21,0,0]
   - Robot_Navigation_state[22,0,0] + y[22,0,0] <= 0
 Y_[22,0,0]: - Robot_Navigation_state[21,0,0]
   + Robot_Navigation_state[22,0,0] + y[22,0,0] >= 0
 Y_[22,0,0]: Robot_Navigation_state[21,0,0]
   - Robot_Navigation_state[22,0,0] + y[22,0,0] >= 0
 Y_[22,0,0]: Robot_Navigation_state[21,0,0]
   + Robot_Navigation_state[22,0,0] + y[22,0,0] <= 2
 Y_[23,0,0]: - Robot_Navigation_state[22,0,0]
   - Robot_Navigation_state[23,0,0] + y[23,0,0] <= 0
 Y_[23,0,0]: - Robot_Navigation_state[22,0,0]
   + Robot_Navigation_state[23,0,0] + y[23,0,0] >= 0
 Y_[23,0,0]: Robot_Navigation_state[22,0,0]
   - Robot_Navigation_state[23,0,0] + y[23,0,0] >= 0
 Y_[23,0,0]: Robot_Navigation_state[22,0,0]
   + Robot_Navigation_state[23,0,0] + y[23,0,0] <= 2
 D_[0,0,0,0]: - z_(0,0,0) + d_(0,0,0,0) <= 0
 D_[0,0,0,1]: - z_(0,0,0) + d_(0,0,0,1) <= 0
 D_[0,0,0,2]: - z_(0,0,0) + d_(0,0,0,2) <= 0
 D_[0,0,0,3]: - z_(0,0,0) + d_(0,0,0,3) <= 0
 D_[0,0,0,4]: - z_(0,0,0) + d_(0,0,0,4) <= 0
 D_[0,0,0,5]: - z_(0,0,0) + d_(0,0,0,5) <= 0
 D_[0,0,0,6]: - z_(0,0,0) + d_(0,0,0,6) <= 0
 D_[0,0,0,7]: - z_(0,0,0) + d_(0,0,0,7) <= 0
 D_[0,0,0,8]: - z_(0,0,0) + d_(0,0,0,8) <= 0
 D_[0,0,0,9]: - z_(0,0,0) + d_(0,0,0,9) <= 0
 D_[1,0,0,0]: - z_(1,0,0) + d_(1,0,0,0) <= 0
 D_[1,0,0,1]: - z_(1,0,0) + d_(1,0,0,1) <= 0
 D_[1,0,0,2]: - z_(1,0,0) + d_(1,0,0,2) <= 0
 D_[1,0,0,3]: - z_(1,0,0) + d_(1,0,0,3) <= 0
 D_[1,0,0,4]: - z_(1,0,0) + d_(1,0,0,4) <= 0
 D_[1,0,0,5]: - z_(1,0,0) + d_(1,0,0,5) <= 0
 D_[1,0,0,6]: - z_(1,0,0) + d_(1,0,0,6) <= 0
 D_[1,0,0,7]: - z_(1,0,0) + d_(1,0,0,7) <= 0
 D_[1,0,0,8]: - z_(1,0,0) + d_(1,0,0,8) <= 0
 D_[1,0,0,9]: - z_(1,0,0) + d_(1,0,0,9) <= 0
 D_[2,0,0,0]: - z_(2,0,0) + d_(2,0,0,0) <= 0
 D_[2,0,0,1]: - z_(2,0,0) + d_(2,0,0,1) <= 0
 D_[2,0,0,2]: - z_(2,0,0) + d_(2,0,0,2) <= 0
 D_[2,0,0,3]: - z_(2,0,0) + d_(2,0,0,3) <= 0
 D_[2,0,0,4]: - z_(2,0,0) + d_(2,0,0,4) <= 0
 D_[2,0,0,5]: - z_(2,0,0) + d_(2,0,0,5) <= 0
 D_[2,0,0,6]: - z_(2,0,0) + d_(2,0,0,6) <= 0
 D_[2,0,0,7]: - z_(2,0,0) + d_(2,0,0,7) <= 0
 D_[2,0,0,8]: - z_(2,0,0) + d_(2,0,0,8) <= 0
 D_[2,0,0,9]: - z_(2,0,0) + d_(2,0,0,9) <= 0
 D_[3,0,0,0]: - z_(3,0,0) + d_(3,0,0,0) <= 0
 D_[3,0,0,1]: - z_(3,0,0) + d_(3,0,0,1) <= 0
 D_[3,0,0,2]: - z_(3,0,0) + d_(3,0,0,2) <= 0
 D_[3,0,0,3]: - z_(3,0,0) + d_(3,0,0,3) <= 0
 D_[3,0,0,4]: - z_(3,0,0) + d_(3,0,0,4) <= 0
 D_[3,0,0,5]: - z_(3,0,0) + d_(3,0,0,5) <= 0
 D_[3,0,0,6]: - z_(3,0,0) + d_(3,0,0,6) <= 0
 D_[3,0,0,7]: - z_(3,0,0) + d_(3,0,0,7) <= 0
 D_[3,0,0,8]: - z_(3,0,0) + d_(3,0,0,8) <= 0
 D_[3,0,0,9]: - z_(3,0,0) + d_(3,0,0,9) <= 0
 D_[4,0,0,0]: - z_(4,0,0) + d_(4,0,0,0) <= 0
 D_[4,0,0,1]: - z_(4,0,0) + d_(4,0,0,1) <= 0
 D_[4,0,0,2]: - z_(4,0,0) + d_(4,0,0,2) <= 0
 D_[4,0,0,3]: - z_(4,0,0) + d_(4,0,0,3) <= 0
 D_[4,0,0,4]: - z_(4,0,0) + d_(4,0,0,4) <= 0
 D_[4,0,0,5]: - z_(4,0,0) + d_(4,0,0,5) <= 0
 D_[4,0,0,6]: - z_(4,0,0) + d_(4,0,0,6) <= 0
 D_[4,0,0,7]: - z_(4,0,0) + d_(4,0,0,7) <= 0
 D_[4,0,0,8]: - z_(4,0,0) + d_(4,0,0,8) <= 0
 D_[4,0,0,9]: - z_(4,0,0) + d_(4,0,0,9) <= 0
 D_[5,0,0,0]: - z_(5,0,0) + d_(5,0,0,0) <= 0
 D_[5,0,0,1]: - z_(5,0,0) + d_(5,0,0,1) <= 0
 D_[5,0,0,2]: - z_(5,0,0) + d_(5,0,0,2) <= 0
 D_[5,0,0,3]: - z_(5,0,0) + d_(5,0,0,3) <= 0
 D_[5,0,0,4]: - z_(5,0,0) + d_(5,0,0,4) <= 0
 D_[5,0,0,5]: - z_(5,0,0) + d_(5,0,0,5) <= 0
 D_[5,0,0,6]: - z_(5,0,0) + d_(5,0,0,6) <= 0
 D_[5,0,0,7]: - z_(5,0,0) + d_(5,0,0,7) <= 0
 D_[5,0,0,8]: - z_(5,0,0) + d_(5,0,0,8) <= 0
 D_[5,0,0,9]: - z_(5,0,0) + d_(5,0,0,9) <= 0
 D_[6,0,0,0]: - z_(6,0,0) + d_(6,0,0,0) <= 0
 D_[6,0,0,1]: - z_(6,0,0) + d_(6,0,0,1) <= 0
 D_[6,0,0,2]: - z_(6,0,0) + d_(6,0,0,2) <= 0
 D_[6,0,0,3]: - z_(6,0,0) + d_(6,0,0,3) <= 0
 D_[6,0,0,4]: - z_(6,0,0) + d_(6,0,0,4) <= 0
 D_[6,0,0,5]: - z_(6,0,0) + d_(6,0,0,5) <= 0
 D_[6,0,0,6]: - z_(6,0,0) + d_(6,0,0,6) <= 0
 D_[6,0,0,7]: - z_(6,0,0) + d_(6,0,0,7) <= 0
 D_[6,0,0,8]: - z_(6,0,0) + d_(6,0,0,8) <= 0
 D_[6,0,0,9]: - z_(6,0,0) + d_(6,0,0,9) <= 0
 D_[7,0,0,0]: - z_(7,0,0) + d_(7,0,0,0) <= 0
 D_[7,0,0,1]: - z_(7,0,0) + d_(7,0,0,1) <= 0
 D_[7,0,0,2]: - z_(7,0,0) + d_(7,0,0,2) <= 0
 D_[7,0,0,3]: - z_(7,0,0) + d_(7,0,0,3) <= 0
 D_[7,0,0,4]: - z_(7,0,0) + d_(7,0,0,4) <= 0
 D_[7,0,0,5]: - z_(7,0,0) + d_(7,0,0,5) <= 0
 D_[7,0,0,6]: - z_(7,0,0) + d_(7,0,0,6) <= 0
 D_[7,0,0,7]: - z_(7,0,0) + d_(7,0,0,7) <= 0
 D_[7,0,0,8]: - z_(7,0,0) + d_(7,0,0,8) <= 0
 D_[7,0,0,9]: - z_(7,0,0) + d_(7,0,0,9) <= 0
 D_[8,0,0,0]: - z_(8,0,0) + d_(8,0,0,0) <= 0
 D_[8,0,0,1]: - z_(8,0,0) + d_(8,0,0,1) <= 0
 D_[8,0,0,2]: - z_(8,0,0) + d_(8,0,0,2) <= 0
 D_[8,0,0,3]: - z_(8,0,0) + d_(8,0,0,3) <= 0
 D_[8,0,0,4]: - z_(8,0,0) + d_(8,0,0,4) <= 0
 D_[8,0,0,5]: - z_(8,0,0) + d_(8,0,0,5) <= 0
 D_[8,0,0,6]: - z_(8,0,0) + d_(8,0,0,6) <= 0
 D_[8,0,0,7]: - z_(8,0,0) + d_(8,0,0,7) <= 0
 D_[8,0,0,8]: - z_(8,0,0) + d_(8,0,0,8) <= 0
 D_[8,0,0,9]: - z_(8,0,0) + d_(8,0,0,9) <= 0
 D_[9,0,0,0]: - z_(9,0,0) + d_(9,0,0,0) <= 0
 D_[9,0,0,1]: - z_(9,0,0) + d_(9,0,0,1) <= 0
 D_[9,0,0,2]: - z_(9,0,0) + d_(9,0,0,2) <= 0
 D_[9,0,0,3]: - z_(9,0,0) + d_(9,0,0,3) <= 0
 D_[9,0,0,4]: - z_(9,0,0) + d_(9,0,0,4) <= 0
 D_[9,0,0,5]: - z_(9,0,0) + d_(9,0,0,5) <= 0
 D_[9,0,0,6]: - z_(9,0,0) + d_(9,0,0,6) <= 0
 D_[9,0,0,7]: - z_(9,0,0) + d_(9,0,0,7) <= 0
 D_[9,0,0,8]: - z_(9,0,0) + d_(9,0,0,8) <= 0
 D_[9,0,0,9]: - z_(9,0,0) + d_(9,0,0,9) <= 0
 D_[10,0,0,0]: - z_(10,0,0) + d_(10,0,0,0) <= 0
 D_[10,0,0,1]: - z_(10,0,0) + d_(10,0,0,1) <= 0
 D_[10,0,0,2]: - z_(10,0,0) + d_(10,0,0,2) <= 0
 D_[10,0,0,3]: - z_(10,0,0) + d_(10,0,0,3) <= 0
 D_[10,0,0,4]: - z_(10,0,0) + d_(10,0,0,4) <= 0
 D_[10,0,0,5]: - z_(10,0,0) + d_(10,0,0,5) <= 0
 D_[10,0,0,6]: - z_(10,0,0) + d_(10,0,0,6) <= 0
 D_[10,0,0,7]: - z_(10,0,0) + d_(10,0,0,7) <= 0
 D_[10,0,0,8]: - z_(10,0,0) + d_(10,0,0,8) <= 0
 D_[10,0,0,9]: - z_(10,0,0) + d_(10,0,0,9) <= 0
 D_[11,0,0,0]: - z_(11,0,0) + d_(11,0,0,0) <= 0
 D_[11,0,0,1]: - z_(11,0,0) + d_(11,0,0,1) <= 0
 D_[11,0,0,2]: - z_(11,0,0) + d_(11,0,0,2) <= 0
 D_[11,0,0,3]: - z_(11,0,0) + d_(11,0,0,3) <= 0
 D_[11,0,0,4]: - z_(11,0,0) + d_(11,0,0,4) <= 0
 D_[11,0,0,5]: - z_(11,0,0) + d_(11,0,0,5) <= 0
 D_[11,0,0,6]: - z_(11,0,0) + d_(11,0,0,6) <= 0
 D_[11,0,0,7]: - z_(11,0,0) + d_(11,0,0,7) <= 0
 D_[11,0,0,8]: - z_(11,0,0) + d_(11,0,0,8) <= 0
 D_[11,0,0,9]: - z_(11,0,0) + d_(11,0,0,9) <= 0
 D_[12,0,0,0]: - z_(12,0,0) + d_(12,0,0,0) <= 0
 D_[12,0,0,1]: - z_(12,0,0) + d_(12,0,0,1) <= 0
 D_[12,0,0,2]: - z_(12,0,0) + d_(12,0,0,2) <= 0
 D_[12,0,0,3]: - z_(12,0,0) + d_(12,0,0,3) <= 0
 D_[12,0,0,4]: - z_(12,0,0) + d_(12,0,0,4) <= 0
 D_[12,0,0,5]: - z_(12,0,0) + d_(12,0,0,5) <= 0
 D_[12,0,0,6]: - z_(12,0,0) + d_(12,0,0,6) <= 0
 D_[12,0,0,7]: - z_(12,0,0) + d_(12,0,0,7) <= 0
 D_[12,0,0,8]: - z_(12,0,0) + d_(12,0,0,8) <= 0
 D_[12,0,0,9]: - z_(12,0,0) + d_(12,0,0,9) <= 0
 D_[13,0,0,0]: - z_(13,0,0) + d_(13,0,0,0) <= 0
 D_[13,0,0,1]: - z_(13,0,0) + d_(13,0,0,1) <= 0
 D_[13,0,0,2]: - z_(13,0,0) + d_(13,0,0,2) <= 0
 D_[13,0,0,3]: - z_(13,0,0) + d_(13,0,0,3) <= 0
 D_[13,0,0,4]: - z_(13,0,0) + d_(13,0,0,4) <= 0
 D_[13,0,0,5]: - z_(13,0,0) + d_(13,0,0,5) <= 0
 D_[13,0,0,6]: - z_(13,0,0) + d_(13,0,0,6) <= 0
 D_[13,0,0,7]: - z_(13,0,0) + d_(13,0,0,7) <= 0
 D_[13,0,0,8]: - z_(13,0,0) + d_(13,0,0,8) <= 0
 D_[13,0,0,9]: - z_(13,0,0) + d_(13,0,0,9) <= 0
 D_[14,0,0,0]: - z_(14,0,0) + d_(14,0,0,0) <= 0
 D_[14,0,0,1]: - z_(14,0,0) + d_(14,0,0,1) <= 0
 D_[14,0,0,2]: - z_(14,0,0) + d_(14,0,0,2) <= 0
 D_[14,0,0,3]: - z_(14,0,0) + d_(14,0,0,3) <= 0
 D_[14,0,0,4]: - z_(14,0,0) + d_(14,0,0,4) <= 0
 D_[14,0,0,5]: - z_(14,0,0) + d_(14,0,0,5) <= 0
 D_[14,0,0,6]: - z_(14,0,0) + d_(14,0,0,6) <= 0
 D_[14,0,0,7]: - z_(14,0,0) + d_(14,0,0,7) <= 0
 D_[14,0,0,8]: - z_(14,0,0) + d_(14,0,0,8) <= 0
 D_[14,0,0,9]: - z_(14,0,0) + d_(14,0,0,9) <= 0
 D_[15,0,0,0]: - z_(15,0,0) + d_(15,0,0,0) <= 0
 D_[15,0,0,1]: - z_(15,0,0) + d_(15,0,0,1) <= 0
 D_[15,0,0,2]: - z_(15,0,0) + d_(15,0,0,2) <= 0
 D_[15,0,0,3]: - z_(15,0,0) + d_(15,0,0,3) <= 0
 D_[15,0,0,4]: - z_(15,0,0) + d_(15,0,0,4) <= 0
 D_[15,0,0,5]: - z_(15,0,0) + d_(15,0,0,5) <= 0
 D_[15,0,0,6]: - z_(15,0,0) + d_(15,0,0,6) <= 0
 D_[15,0,0,7]: - z_(15,0,0) + d_(15,0,0,7) <= 0
 D_[15,0,0,8]: - z_(15,0,0) + d_(15,0,0,8) <= 0
 D_[15,0,0,9]: - z_(15,0,0) + d_(15,0,0,9) <= 0
 D_[16,0,0,0]: - z_(16,0,0) + d_(16,0,0,0) <= 0
 D_[16,0,0,1]: - z_(16,0,0) + d_(16,0,0,1) <= 0
 D_[16,0,0,2]: - z_(16,0,0) + d_(16,0,0,2) <= 0
 D_[16,0,0,3]: - z_(16,0,0) + d_(16,0,0,3) <= 0
 D_[16,0,0,4]: - z_(16,0,0) + d_(16,0,0,4) <= 0
 D_[16,0,0,5]: - z_(16,0,0) + d_(16,0,0,5) <= 0
 D_[16,0,0,6]: - z_(16,0,0) + d_(16,0,0,6) <= 0
 D_[16,0,0,7]: - z_(16,0,0) + d_(16,0,0,7) <= 0
 D_[16,0,0,8]: - z_(16,0,0) + d_(16,0,0,8) <= 0
 D_[16,0,0,9]: - z_(16,0,0) + d_(16,0,0,9) <= 0
 D_[17,0,0,0]: - z_(17,0,0) + d_(17,0,0,0) <= 0
 D_[17,0,0,1]: - z_(17,0,0) + d_(17,0,0,1) <= 0
 D_[17,0,0,2]: - z_(17,0,0) + d_(17,0,0,2) <= 0
 D_[17,0,0,3]: - z_(17,0,0) + d_(17,0,0,3) <= 0
 D_[17,0,0,4]: - z_(17,0,0) + d_(17,0,0,4) <= 0
 D_[17,0,0,5]: - z_(17,0,0) + d_(17,0,0,5) <= 0
 D_[17,0,0,6]: - z_(17,0,0) + d_(17,0,0,6) <= 0
 D_[17,0,0,7]: - z_(17,0,0) + d_(17,0,0,7) <= 0
 D_[17,0,0,8]: - z_(17,0,0) + d_(17,0,0,8) <= 0
 D_[17,0,0,9]: - z_(17,0,0) + d_(17,0,0,9) <= 0
 D_[18,0,0,0]: - z_(18,0,0) + d_(18,0,0,0) <= 0
 D_[18,0,0,1]: - z_(18,0,0) + d_(18,0,0,1) <= 0
 D_[18,0,0,2]: - z_(18,0,0) + d_(18,0,0,2) <= 0
 D_[18,0,0,3]: - z_(18,0,0) + d_(18,0,0,3) <= 0
 D_[18,0,0,4]: - z_(18,0,0) + d_(18,0,0,4) <= 0
 D_[18,0,0,5]: - z_(18,0,0) + d_(18,0,0,5) <= 0
 D_[18,0,0,6]: - z_(18,0,0) + d_(18,0,0,6) <= 0
 D_[18,0,0,7]: - z_(18,0,0) + d_(18,0,0,7) <= 0
 D_[18,0,0,8]: - z_(18,0,0) + d_(18,0,0,8) <= 0
 D_[18,0,0,9]: - z_(18,0,0) + d_(18,0,0,9) <= 0
 D_[19,0,0,0]: - z_(19,0,0) + d_(19,0,0,0) <= 0
 D_[19,0,0,1]: - z_(19,0,0) + d_(19,0,0,1) <= 0
 D_[19,0,0,2]: - z_(19,0,0) + d_(19,0,0,2) <= 0
 D_[19,0,0,3]: - z_(19,0,0) + d_(19,0,0,3) <= 0
 D_[19,0,0,4]: - z_(19,0,0) + d_(19,0,0,4) <= 0
 D_[19,0,0,5]: - z_(19,0,0) + d_(19,0,0,5) <= 0
 D_[19,0,0,6]: - z_(19,0,0) + d_(19,0,0,6) <= 0
 D_[19,0,0,7]: - z_(19,0,0) + d_(19,0,0,7) <= 0
 D_[19,0,0,8]: - z_(19,0,0) + d_(19,0,0,8) <= 0
 D_[19,0,0,9]: - z_(19,0,0) + d_(19,0,0,9) <= 0
 D_[20,0,0,0]: - z_(20,0,0) + d_(20,0,0,0) <= 0
 D_[20,0,0,1]: - z_(20,0,0) + d_(20,0,0,1) <= 0
 D_[20,0,0,2]: - z_(20,0,0) + d_(20,0,0,2) <= 0
 D_[20,0,0,3]: - z_(20,0,0) + d_(20,0,0,3) <= 0
 D_[20,0,0,4]: - z_(20,0,0) + d_(20,0,0,4) <= 0
 D_[20,0,0,5]: - z_(20,0,0) + d_(20,0,0,5) <= 0
 D_[20,0,0,6]: - z_(20,0,0) + d_(20,0,0,6) <= 0
 D_[20,0,0,7]: - z_(20,0,0) + d_(20,0,0,7) <= 0
 D_[20,0,0,8]: - z_(20,0,0) + d_(20,0,0,8) <= 0
 D_[20,0,0,9]: - z_(20,0,0) + d_(20,0,0,9) <= 0
 D_[21,0,0,0]: - z_(21,0,0) + d_(21,0,0,0) <= 0
 D_[21,0,0,1]: - z_(21,0,0) + d_(21,0,0,1) <= 0
 D_[21,0,0,2]: - z_(21,0,0) + d_(21,0,0,2) <= 0
 D_[21,0,0,3]: - z_(21,0,0) + d_(21,0,0,3) <= 0
 D_[21,0,0,4]: - z_(21,0,0) + d_(21,0,0,4) <= 0
 D_[21,0,0,5]: - z_(21,0,0) + d_(21,0,0,5) <= 0
 D_[21,0,0,6]: - z_(21,0,0) + d_(21,0,0,6) <= 0
 D_[21,0,0,7]: - z_(21,0,0) + d_(21,0,0,7) <= 0
 D_[21,0,0,8]: - z_(21,0,0) + d_(21,0,0,8) <= 0
 D_[21,0,0,9]: - z_(21,0,0) + d_(21,0,0,9) <= 0
 D_[22,0,0,0]: - z_(22,0,0) + d_(22,0,0,0) <= 0
 D_[22,0,0,1]: - z_(22,0,0) + d_(22,0,0,1) <= 0
 D_[22,0,0,2]: - z_(22,0,0) + d_(22,0,0,2) <= 0
 D_[22,0,0,3]: - z_(22,0,0) + d_(22,0,0,3) <= 0
 D_[22,0,0,4]: - z_(22,0,0) + d_(22,0,0,4) <= 0
 D_[22,0,0,5]: - z_(22,0,0) + d_(22,0,0,5) <= 0
 D_[22,0,0,6]: - z_(22,0,0) + d_(22,0,0,6) <= 0
 D_[22,0,0,7]: - z_(22,0,0) + d_(22,0,0,7) <= 0
 D_[22,0,0,8]: - z_(22,0,0) + d_(22,0,0,8) <= 0
 D_[22,0,0,9]: - z_(22,0,0) + d_(22,0,0,9) <= 0
 D_[23,0,0,0]: - z_(23,0,0) + d_(23,0,0,0) <= 0
 D_[23,0,0,1]: - z_(23,0,0) + d_(23,0,0,1) <= 0
 D_[23,0,0,2]: - z_(23,0,0) + d_(23,0,0,2) <= 0
 D_[23,0,0,3]: - z_(23,0,0) + d_(23,0,0,3) <= 0
 D_[23,0,0,4]: - z_(23,0,0) + d_(23,0,0,4) <= 0
 D_[23,0,0,5]: - z_(23,0,0) + d_(23,0,0,5) <= 0
 D_[23,0,0,6]: - z_(23,0,0) + d_(23,0,0,6) <= 0
 D_[23,0,0,7]: - z_(23,0,0) + d_(23,0,0,7) <= 0
 D_[23,0,0,8]: - z_(23,0,0) + d_(23,0,0,8) <= 0
 D_[23,0,0,9]: - z_(23,0,0) + d_(23,0,0,9) <= 0
 Aux_[1,0,0]: - z_(1,0,0) + a_(1,0,0) + [ z_(0,0,0) * z_(1,0,0) ] = 0
 Aux2_[1,0,0]: - z_(0,0,0) + b_(1,0,0) + [ z_(0,0,0) * z_(1,0,0) ] = 0
 Aux_[2,0,0]: - z_(2,0,0) + a_(2,0,0) + [ z_(1,0,0) * z_(2,0,0) ] = 0
 Aux2_[2,0,0]: - z_(1,0,0) + b_(2,0,0) + [ z_(1,0,0) * z_(2,0,0) ] = 0
 Aux_[3,0,0]: - z_(3,0,0) + a_(3,0,0) + [ z_(2,0,0) * z_(3,0,0) ] = 0
 Aux2_[3,0,0]: - z_(2,0,0) + b_(3,0,0) + [ z_(2,0,0) * z_(3,0,0) ] = 0
 Aux_[4,0,0]: - z_(4,0,0) + a_(4,0,0) + [ z_(3,0,0) * z_(4,0,0) ] = 0
 Aux2_[4,0,0]: - z_(3,0,0) + b_(4,0,0) + [ z_(3,0,0) * z_(4,0,0) ] = 0
 Aux_[5,0,0]: - z_(5,0,0) + a_(5,0,0) + [ z_(4,0,0) * z_(5,0,0) ] = 0
 Aux2_[5,0,0]: - z_(4,0,0) + b_(5,0,0) + [ z_(4,0,0) * z_(5,0,0) ] = 0
 Aux_[6,0,0]: - z_(6,0,0) + a_(6,0,0) + [ z_(5,0,0) * z_(6,0,0) ] = 0
 Aux2_[6,0,0]: - z_(5,0,0) + b_(6,0,0) + [ z_(5,0,0) * z_(6,0,0) ] = 0
 Aux_[7,0,0]: - z_(7,0,0) + a_(7,0,0) + [ z_(6,0,0) * z_(7,0,0) ] = 0
 Aux2_[7,0,0]: - z_(6,0,0) + b_(7,0,0) + [ z_(6,0,0) * z_(7,0,0) ] = 0
 Aux_[8,0,0]: - z_(8,0,0) + a_(8,0,0) + [ z_(7,0,0) * z_(8,0,0) ] = 0
 Aux2_[8,0,0]: - z_(7,0,0) + b_(8,0,0) + [ z_(7,0,0) * z_(8,0,0) ] = 0
 Aux_[9,0,0]: - z_(9,0,0) + a_(9,0,0) + [ z_(8,0,0) * z_(9,0,0) ] = 0
 Aux2_[9,0,0]: - z_(8,0,0) + b_(9,0,0) + [ z_(8,0,0) * z_(9,0,0) ] = 0
 Aux_[10,0,0]: - z_(10,0,0) + a_(10,0,0) + [ z_(9,0,0) * z_(10,0,0) ] = 0
 Aux2_[10,0,0]: - z_(9,0,0) + b_(10,0,0) + [ z_(9,0,0) * z_(10,0,0) ] = 0
 Aux_[11,0,0]: - z_(11,0,0) + a_(11,0,0) + [ z_(10,0,0) * z_(11,0,0) ] = 0
 Aux2_[11,0,0]: - z_(10,0,0) + b_(11,0,0) + [ z_(10,0,0) * z_(11,0,0) ]
   = 0
 Aux_[12,0,0]: - z_(12,0,0) + a_(12,0,0) + [ z_(11,0,0) * z_(12,0,0) ] = 0
 Aux2_[12,0,0]: - z_(11,0,0) + b_(12,0,0) + [ z_(11,0,0) * z_(12,0,0) ]
   = 0
 Aux_[13,0,0]: - z_(13,0,0) + a_(13,0,0) + [ z_(12,0,0) * z_(13,0,0) ] = 0
 Aux2_[13,0,0]: - z_(12,0,0) + b_(13,0,0) + [ z_(12,0,0) * z_(13,0,0) ]
   = 0
 Aux_[14,0,0]: - z_(14,0,0) + a_(14,0,0) + [ z_(13,0,0) * z_(14,0,0) ] = 0
 Aux2_[14,0,0]: - z_(13,0,0) + b_(14,0,0) + [ z_(13,0,0) * z_(14,0,0) ]
   = 0
 Aux_[15,0,0]: - z_(15,0,0) + a_(15,0,0) + [ z_(14,0,0) * z_(15,0,0) ] = 0
 Aux2_[15,0,0]: - z_(14,0,0) + b_(15,0,0) + [ z_(14,0,0) * z_(15,0,0) ]
   = 0
 Aux_[16,0,0]: - z_(16,0,0) + a_(16,0,0) + [ z_(15,0,0) * z_(16,0,0) ] = 0
 Aux2_[16,0,0]: - z_(15,0,0) + b_(16,0,0) + [ z_(15,0,0) * z_(16,0,0) ]
   = 0
 Aux_[17,0,0]: - z_(17,0,0) + a_(17,0,0) + [ z_(16,0,0) * z_(17,0,0) ] = 0
 Aux2_[17,0,0]: - z_(16,0,0) + b_(17,0,0) + [ z_(16,0,0) * z_(17,0,0) ]
   = 0
 Aux_[18,0,0]: - z_(18,0,0) + a_(18,0,0) + [ z_(17,0,0) * z_(18,0,0) ] = 0
 Aux2_[18,0,0]: - z_(17,0,0) + b_(18,0,0) + [ z_(17,0,0) * z_(18,0,0) ]
   = 0
 Aux_[19,0,0]: - z_(19,0,0) + a_(19,0,0) + [ z_(18,0,0) * z_(19,0,0) ] = 0
 Aux2_[19,0,0]: - z_(18,0,0) + b_(19,0,0) + [ z_(18,0,0) * z_(19,0,0) ]
   = 0
 Aux_[20,0,0]: - z_(20,0,0) + a_(20,0,0) + [ z_(19,0,0) * z_(20,0,0) ] = 0
 Aux2_[20,0,0]: - z_(19,0,0) + b_(20,0,0) + [ z_(19,0,0) * z_(20,0,0) ]
   = 0
 Aux_[21,0,0]: - z_(21,0,0) + a_(21,0,0) + [ z_(20,0,0) * z_(21,0,0) ] = 0
 Aux2_[21,0,0]: - z_(20,0,0) + b_(21,0,0) + [ z_(20,0,0) * z_(21,0,0) ]
   = 0
 Aux_[22,0,0]: - z_(22,0,0) + a_(22,0,0) + [ z_(21,0,0) * z_(22,0,0) ] = 0
 Aux2_[22,0,0]: - z_(21,0,0) + b_(22,0,0) + [ z_(21,0,0) * z_(22,0,0) ]
   = 0
 Aux_[23,0,0]: - z_(23,0,0) + a_(23,0,0) + [ z_(22,0,0) * z_(23,0,0) ] = 0
 Aux2_[23,0,0]: - z_(22,0,0) + b_(23,0,0) + [ z_(22,0,0) * z_(23,0,0) ]
   = 0
Bounds
 Constant = 1
Binaries
 x_(0,0,0,0) x_(0,0,0,1) x_(0,0,0,2) x_(0,0,0,3) x_(0,0,0,4) x_(1,0,0,0)
 x_(1,0,0,1) x_(1,0,0,2) x_(1,0,0,3) x_(1,0,0,4) x_(2,0,0,0) x_(2,0,0,1)
 x_(2,0,0,2) x_(2,0,0,3) x_(2,0,0,4) x_(3,0,0,0) x_(3,0,0,1) x_(3,0,0,2)
 x_(3,0,0,3) x_(3,0,0,4) x_(4,0,0,0) x_(4,0,0,1) x_(4,0,0,2) x_(4,0,0,3)
 x_(4,0,0,4) x_(5,0,0,0) x_(5,0,0,1) x_(5,0,0,2) x_(5,0,0,3) x_(5,0,0,4)
 x_(6,0,0,0) x_(6,0,0,1) x_(6,0,0,2) x_(6,0,0,3) x_(6,0,0,4) x_(7,0,0,0)
 x_(7,0,0,1) x_(7,0,0,2) x_(7,0,0,3) x_(7,0,0,4) x_(8,0,0,0) x_(8,0,0,1)
 x_(8,0,0,2) x_(8,0,0,3) x_(8,0,0,4) x_(9,0,0,0) x_(9,0,0,1) x_(9,0,0,2)
 x_(9,0,0,3) x_(9,0,0,4) x_(10,0,0,0) x_(10,0,0,1) x_(10,0,0,2)
 x_(10,0,0,3) x_(10,0,0,4) x_(11,0,0,0) x_(11,0,0,1) x_(11,0,0,2)
 x_(11,0,0,3) x_(11,0,0,4) x_(12,0,0,0) x_(12,0,0,1) x_(12,0,0,2)
 x_(12,0,0,3) x_(12,0,0,4) x_(13,0,0,0) x_(13,0,0,1) x_(13,0,0,2)
 x_(13,0,0,3) x_(13,0,0,4) x_(14,0,0,0) x_(14,0,0,1) x_(14,0,0,2)
 x_(14,0,0,3) x_(14,0,0,4) x_(15,0,0,0) x_(15,0,0,1) x_(15,0,0,2)
 x_(15,0,0,3) x_(15,0,0,4) x_(16,0,0,0) x_(16,0,0,1) x_(16,0,0,2)
 x_(16,0,0,3) x_(16,0,0,4) x_(17,0,0,0) x_(17,0,0,1) x_(17,0,0,2)
 x_(17,0,0,3) x_(17,0,0,4) x_(18,0,0,0) x_(18,0,0,1) x_(18,0,0,2)
 x_(18,0,0,3) x_(18,0,0,4) x_(19,0,0,0) x_(19,0,0,1) x_(19,0,0,2)
 x_(19,0,0,3) x_(19,0,0,4) x_(20,0,0,0) x_(20,0,0,1) x_(20,0,0,2)
 x_(20,0,0,3) x_(20,0,0,4) x_(21,0,0,0) x_(21,0,0,1) x_(21,0,0,2)
 x_(21,0,0,3) x_(21,0,0,4) x_(22,0,0,0) x_(22,0,0,1) x_(22,0,0,2)
 x_(22,0,0,3) x_(22,0,0,4) x_(23,0,0,0) x_(23,0,0,1) x_(23,0,0,2)
 x_(23,0,0,3) x_(23,0,0,4) Robot_Navigation_state[0,0,0] y[0,0,0]
 Robot_Navigation_state[1,0,0] y[1,0,0] Robot_Navigation_state[2,0,0]
 y[2,0,0] Robot_Navigation_state[3,0,0] y[3,0,0]
 Robot_Navigation_state[4,0,0] y[4,0,0] Robot_Navigation_state[5,0,0]
 y[5,0,0] Robot_Navigation_state[6,0,0] y[6,0,0]
 Robot_Navigation_state[7,0,0] y[7,0,0] Robot_Navigation_state[8,0,0]
 y[8,0,0] Robot_Navigation_state[9,0,0] y[9,0,0]
 Robot_Navigation_state[10,0,0] y[10,0,0] Robot_Navigation_state[11,0,0]
 y[11,0,0] Robot_Navigation_state[12,0,0] y[12,0,0]
 Robot_Navigation_state[13,0,0] y[13,0,0] Robot_Navigation_state[14,0,0]
 y[14,0,0] Robot_Navigation_state[15,0,0] y[15,0,0]
 Robot_Navigation_state[16,0,0] y[16,0,0] Robot_Navigation_state[17,0,0]
 y[17,0,0] Robot_Navigation_state[18,0,0] y[18,0,0]
 Robot_Navigation_state[19,0,0] y[19,0,0] Robot_Navigation_state[20,0,0]
 y[20,0,0] Robot_Navigation_state[21,0,0] y[21,0,0]
 Robot_Navigation_state[22,0,0] y[22,0,0] Robot_Navigation_state[23,0,0]
 y[23,0,0] z_(0,0,0) a_(0,0,0) b_(0,0,0) d_(0,0,0,0) d_(0,0,0,1)
 d_(0,0,0,2) d_(0,0,0,3) d_(0,0,0,4) d_(0,0,0,5) d_(0,0,0,6) d_(0,0,0,7)
 d_(0,0,0,8) d_(0,0,0,9) z_(1,0,0) a_(1,0,0) b_(1,0,0) d_(1,0,0,0)
 d_(1,0,0,1) d_(1,0,0,2) d_(1,0,0,3) d_(1,0,0,4) d_(1,0,0,5) d_(1,0,0,6)
 d_(1,0,0,7) d_(1,0,0,8) d_(1,0,0,9) z_(2,0,0) a_(2,0,0) b_(2,0,0)
 d_(2,0,0,0) d_(2,0,0,1) d_(2,0,0,2) d_(2,0,0,3) d_(2,0,0,4) d_(2,0,0,5)
 d_(2,0,0,6) d_(2,0,0,7) d_(2,0,0,8) d_(2,0,0,9) z_(3,0,0) a_(3,0,0)
 b_(3,0,0) d_(3,0,0,0) d_(3,0,0,1) d_(3,0,0,2) d_(3,0,0,3) d_(3,0,0,4)
 d_(3,0,0,5) d_(3,0,0,6) d_(3,0,0,7) d_(3,0,0,8) d_(3,0,0,9) z_(4,0,0)
 a_(4,0,0) b_(4,0,0) d_(4,0,0,0) d_(4,0,0,1) d_(4,0,0,2) d_(4,0,0,3)
 d_(4,0,0,4) d_(4,0,0,5) d_(4,0,0,6) d_(4,0,0,7) d_(4,0,0,8) d_(4,0,0,9)
 z_(5,0,0) a_(5,0,0) b_(5,0,0) d_(5,0,0,0) d_(5,0,0,1) d_(5,0,0,2)
 d_(5,0,0,3) d_(5,0,0,4) d_(5,0,0,5) d_(5,0,0,6) d_(5,0,0,7) d_(5,0,0,8)
 d_(5,0,0,9) z_(6,0,0) a_(6,0,0) b_(6,0,0) d_(6,0,0,0) d_(6,0,0,1)
 d_(6,0,0,2) d_(6,0,0,3) d_(6,0,0,4) d_(6,0,0,5) d_(6,0,0,6) d_(6,0,0,7)
 d_(6,0,0,8) d_(6,0,0,9) z_(7,0,0) a_(7,0,0) b_(7,0,0) d_(7,0,0,0)
 d_(7,0,0,1) d_(7,0,0,2) d_(7,0,0,3) d_(7,0,0,4) d_(7,0,0,5) d_(7,0,0,6)
 d_(7,0,0,7) d_(7,0,0,8) d_(7,0,0,9) z_(8,0,0) a_(8,0,0) b_(8,0,0)
 d_(8,0,0,0) d_(8,0,0,1) d_(8,0,0,2) d_(8,0,0,3) d_(8,0,0,4) d_(8,0,0,5)
 d_(8,0,0,6) d_(8,0,0,7) d_(8,0,0,8) d_(8,0,0,9) z_(9,0,0) a_(9,0,0)
 b_(9,0,0) d_(9,0,0,0) d_(9,0,0,1) d_(9,0,0,2) d_(9,0,0,3) d_(9,0,0,4)
 d_(9,0,0,5) d_(9,0,0,6) d_(9,0,0,7) d_(9,0,0,8) d_(9,0,0,9) z_(10,0,0)
 a_(10,0,0) b_(10,0,0) d_(10,0,0,0) d_(10,0,0,1) d_(10,0,0,2) d_(10,0,0,3)
 d_(10,0,0,4) d_(10,0,0,5) d_(10,0,0,6) d_(10,0,0,7) d_(10,0,0,8)
 d_(10,0,0,9) z_(11,0,0) a_(11,0,0) b_(11,0,0) d_(11,0,0,0) d_(11,0,0,1)
 d_(11,0,0,2) d_(11,0,0,3) d_(11,0,0,4) d_(11,0,0,5) d_(11,0,0,6)
 d_(11,0,0,7) d_(11,0,0,8) d_(11,0,0,9) z_(12,0,0) a_(12,0,0) b_(12,0,0)
 d_(12,0,0,0) d_(12,0,0,1) d_(12,0,0,2) d_(12,0,0,3) d_(12,0,0,4)
 d_(12,0,0,5) d_(12,0,0,6) d_(12,0,0,7) d_(12,0,0,8) d_(12,0,0,9)
 z_(13,0,0) a_(13,0,0) b_(13,0,0) d_(13,0,0,0) d_(13,0,0,1) d_(13,0,0,2)
 d_(13,0,0,3) d_(13,0,0,4) d_(13,0,0,5) d_(13,0,0,6) d_(13,0,0,7)
 d_(13,0,0,8) d_(13,0,0,9) z_(14,0,0) a_(14,0,0) b_(14,0,0) d_(14,0,0,0)
 d_(14,0,0,1) d_(14,0,0,2) d_(14,0,0,3) d_(14,0,0,4) d_(14,0,0,5)
 d_(14,0,0,6) d_(14,0,0,7) d_(14,0,0,8) d_(14,0,0,9) z_(15,0,0) a_(15,0,0)
 b_(15,0,0) d_(15,0,0,0) d_(15,0,0,1) d_(15,0,0,2) d_(15,0,0,3)
 d_(15,0,0,4) d_(15,0,0,5) d_(15,0,0,6) d_(15,0,0,7) d_(15,0,0,8)
 d_(15,0,0,9) z_(16,0,0) a_(16,0,0) b_(16,0,0) d_(16,0,0,0) d_(16,0,0,1)
 d_(16,0,0,2) d_(16,0,0,3) d_(16,0,0,4) d_(16,0,0,5) d_(16,0,0,6)
 d_(16,0,0,7) d_(16,0,0,8) d_(16,0,0,9) z_(17,0,0) a_(17,0,0) b_(17,0,0)
 d_(17,0,0,0) d_(17,0,0,1) d_(17,0,0,2) d_(17,0,0,3) d_(17,0,0,4)
 d_(17,0,0,5) d_(17,0,0,6) d_(17,0,0,7) d_(17,0,0,8) d_(17,0,0,9)
 z_(18,0,0) a_(18,0,0) b_(18,0,0) d_(18,0,0,0) d_(18,0,0,1) d_(18,0,0,2)
 d_(18,0,0,3) d_(18,0,0,4) d_(18,0,0,5) d_(18,0,0,6) d_(18,0,0,7)
 d_(18,0,0,8) d_(18,0,0,9) z_(19,0,0) a_(19,0,0) b_(19,0,0) d_(19,0,0,0)
 d_(19,0,0,1) d_(19,0,0,2) d_(19,0,0,3) d_(19,0,0,4) d_(19,0,0,5)
 d_(19,0,0,6) d_(19,0,0,7) d_(19,0,0,8) d_(19,0,0,9) z_(20,0,0) a_(20,0,0)
 b_(20,0,0) d_(20,0,0,0) d_(20,0,0,1) d_(20,0,0,2) d_(20,0,0,3)
 d_(20,0,0,4) d_(20,0,0,5) d_(20,0,0,6) d_(20,0,0,7) d_(20,0,0,8)
 d_(20,0,0,9) z_(21,0,0) a_(21,0,0) b_(21,0,0) d_(21,0,0,0) d_(21,0,0,1)
 d_(21,0,0,2) d_(21,0,0,3) d_(21,0,0,4) d_(21,0,0,5) d_(21,0,0,6)
 d_(21,0,0,7) d_(21,0,0,8) d_(21,0,0,9) z_(22,0,0) a_(22,0,0) b_(22,0,0)
 d_(22,0,0,0) d_(22,0,0,1) d_(22,0,0,2) d_(22,0,0,3) d_(22,0,0,4)
 d_(22,0,0,5) d_(22,0,0,6) d_(22,0,0,7) d_(22,0,0,8) d_(22,0,0,9)
 z_(23,0,0) a_(23,0,0) b_(23,0,0) d_(23,0,0,0) d_(23,0,0,1) d_(23,0,0,2)
 d_(23,0,0,3) d_(23,0,0,4) d_(23,0,0,5) d_(23,0,0,6) d_(23,0,0,7)
 d_(23,0,0,8) d_(23,0,0,9) aux3_(0,0) aux3_(1,0) aux3_(2,0) aux3_(3,0)
 aux3_(4,0) aux3_(5,0) aux3_(6,0) aux3_(7,0) aux3_(8,0) aux3_(9,0)
 aux3_(10,0) aux3_(11,0) aux3_(12,0) aux3_(13,0) aux3_(14,0) aux3_(15,0)
 aux3_(16,0) aux3_(17,0) aux3_(18,0) aux3_(19,0) aux3_(20,0) aux3_(21,0)
 aux3_(22,0) aux3_(23,0)
General Constraints
 Energy_Charge_[0,0]: e_(0,0) = MIN ( e_charged_1(0,0) , 111 )
 Energy_Charge_[1,0]: e_(1,0) = MIN ( e_charged_1(1,0) , 111 )
 Energy_Charge_[2,0]: e_(2,0) = MIN ( e_charged_1(2,0) , 111 )
 Energy_Charge_[3,0]: e_(3,0) = MIN ( e_charged_1(3,0) , 111 )
 Energy_Charge_[4,0]: e_(4,0) = MIN ( e_charged_1(4,0) , 111 )
 Energy_Charge_[5,0]: e_(5,0) = MIN ( e_charged_1(5,0) , 111 )
 Energy_Charge_[6,0]: e_(6,0) = MIN ( e_charged_1(6,0) , 111 )
 Energy_Charge_[7,0]: e_(7,0) = MIN ( e_charged_1(7,0) , 111 )
 Energy_Charge_[8,0]: e_(8,0) = MIN ( e_charged_1(8,0) , 111 )
 Energy_Charge_[9,0]: e_(9,0) = MIN ( e_charged_1(9,0) , 111 )
 Energy_Charge_[10,0]: e_(10,0) = MIN ( e_charged_1(10,0) , 111 )
 Energy_Charge_[11,0]: e_(11,0) = MIN ( e_charged_1(11,0) , 111 )
 Energy_Charge_[12,0]: e_(12,0) = MIN ( e_charged_1(12,0) , 111 )
 Energy_Charge_[13,0]: e_(13,0) = MIN ( e_charged_1(13,0) , 111 )
 Energy_Charge_[14,0]: e_(14,0) = MIN ( e_charged_1(14,0) , 111 )
 Energy_Charge_[15,0]: e_(15,0) = MIN ( e_charged_1(15,0) , 111 )
 Energy_Charge_[16,0]: e_(16,0) = MIN ( e_charged_1(16,0) , 111 )
 Energy_Charge_[17,0]: e_(17,0) = MIN ( e_charged_1(17,0) , 111 )
 Energy_Charge_[18,0]: e_(18,0) = MIN ( e_charged_1(18,0) , 111 )
 Energy_Charge_[19,0]: e_(19,0) = MIN ( e_charged_1(19,0) , 111 )
 Energy_Charge_[20,0]: e_(20,0) = MIN ( e_charged_1(20,0) , 111 )
 Energy_Charge_[21,0]: e_(21,0) = MIN ( e_charged_1(21,0) , 111 )
 Energy_Charge_[22,0]: e_(22,0) = MIN ( e_charged_1(22,0) , 111 )
 Energy_Charge_[23,0]: e_(23,0) = MIN ( e_charged_1(23,0) , 111 )
End

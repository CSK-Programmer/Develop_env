""" 

This program uses this method to describe the state of the corner blocks of the cube:

       3----------2
      /|         /|
     / |        / |
    0----------1  |
    |  7-------|--6
    | /        | /
    |/         |/
    4----------5

 """

target = [0, 1, 2, 3, 4, 5, 6, 7]
current_position = []

class Cube_State():
    def __init__(list_state):
        if(type(list_state) == list):
            self.init_state = list_state
            self.next_states = []

    def Operation_U2_and_append():
        state_tmp = self.init_state
        # swap corners 0 & 2
        corner_block_tmp = state_tmp[0]
        state_tmp[0] = state_tmp[2]
        state_tmp[2] = corner_block_tmp
        # swap corners 1 & 3
        corner_block_tmp = state_tmp[1]
        state_tmp[1] = state_tmp[3]
        state_tmp[3] = corner_block_tmp
        self.next_states.append(Cube_State(state_tmp))
        
    def Operation_D2_and_append():
        state_tmp = self.init_state
        # swap corners 4 & 6
        corner_block_tmp = state_tmp[4]
        state_tmp[4] = state_tmp[6]
        state_tmp[6] = corner_block_tmp
        # swap corners 5 & 7
        corner_block_tmp = state_tmp[5]
        state_tmp[5] = state_tmp[7]
        state_tmp[7] = corner_block_tmp
        self.next_states.append(Cube_State(state_tmp))
        
    def Operation_F2_and_append():
        state_tmp = self.init_state
        # swap corners 0 & 5
        corner_block_tmp = state_tmp[0]
        state_tmp[0] = state_tmp[5]
        state_tmp[5] = corner_block_tmp
        # swap corners 1 & 4
        corner_block_tmp = state_tmp[1]
        state_tmp[1] = state_tmp[4]
        state_tmp[4] = corner_block_tmp
        self.next_states.append(Cube_State(state_tmp))
        
    def Operation_B2_and_append():
        state_tmp = self.init_state
        # swap corners 2 & 7
        corner_block_tmp = state_tmp[2]
        state_tmp[2] = state_tmp[7]
        state_tmp[7] = corner_block_tmp
        # swap corners 3 & 6
        corner_block_tmp = state_tmp[3]
        state_tmp[3] = state_tmp[6]
        state_tmp[6] = corner_block_tmp
        self.next_states.append(Cube_State(state_tmp))
        
    def Operation_L2_and_append():
        state_tmp = self.init_state
        # swap corners 0 & 7
        corner_block_tmp = state_tmp[0]
        state_tmp[0] = state_tmp[7]
        state_tmp[7] = corner_block_tmp
        # swap corners 3 & 4
        corner_block_tmp = state_tmp[3]
        state_tmp[3] = state_tmp[4]
        state_tmp[4] = corner_block_tmp
        self.next_states.append(Cube_State(state_tmp))
        
    def Operation_R2_and_append():
        state_tmp = self.init_state
        # swap corners 1 & 6
        corner_block_tmp = state_tmp[1]
        state_tmp[1] = state_tmp[6]
        state_tmp[6] = corner_block_tmp
        # swap corners 2 & 5
        corner_block_tmp = state_tmp[2]
        state_tmp[2] = state_tmp[5]
        state_tmp[5] = corner_block_tmp
        self.next_states.append(Cube_State(state_tmp))
    
    def if_last():
        if(self.next_states == []):
            return True
        else:
            return False
    
    def flash_enumerate():
        if(self.if_last == False):
            flash_next()

    def flash_next():
        self.Operation_U2_and_append()
        self.Operation_D2_and_append()
        self.Operation_F2_and_append()
        self.Operation_B2_and_append()
        self.Operation_L2_and_append()
        self.Operation_R2_and_append()

    def check_enumerate():
        if(self.if_last()):
            if(self.init_state == target):
                pass
        else:
            for state_obj in self.next_states:
                state_obj.check_enumerate()
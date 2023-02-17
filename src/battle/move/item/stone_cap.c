#include "stone_cap.h"
#include "effects.h"

#include "ItemRefund.inc.c"

API_CALLABLE(N(func_802A123C_7217DC)) {
    BattleStatus* battleStatus = &gBattleStatus;
    Actor* player = battleStatus->playerActor;
    s32 i;

    if (isInitialCall) {
        script->functionTemp[0] = 0;
    }

    switch (script->functionTemp[0]) {
        case 0:
            inflict_status(player, STATUS_STONE, script->varTable[0]);
            player->statusAfflicted = 0;
            script->functionTemp[1] = 3;
            script->functionTemp[0] = 1;
            break;

        case 1:
            for (i = 0; i < 10; i++) {
                f32 x = player->currentPos.x + ((rand_int(20) - 10) * player->scalingFactor);
                f32 y = player->currentPos.y + ((rand_int(20) + 10) * player->scalingFactor);
                f32 z = player->currentPos.z + 5.0f;
                fx_floating_cloud_puff(0, x, y, z, 1.0f, 25);
            }

            if (script->functionTemp[1] == 0) {
                BattleStatus* battleStatus2 = &gBattleStatus;

                battleStatus2->flags1 &= ~BS_FLAGS1_HUSTLED;
                battleStatus->hustleTurns = 0;
                battleStatus->itemUsesLeft = 0;

                return ApiStatus_DONE2;
            }

            script->functionTemp[1]--;
            break;
    }

    return ApiStatus_BLOCK;
}

#include "UseItem.inc.c"

EvtScript N(main) = {
    EVT_SET_CONST(LVarA, 0x00000088)
    EVT_EXEC_WAIT(N(UseItemWithEffect))
    EVT_CALL(PlaySound, SOUND_361)
    EVT_CALL(SetAnimation, ACTOR_PLAYER, 0, ANIM_Mario_30009)
    EVT_WAIT(30)
    EVT_CALL(SetAnimation, ACTOR_PLAYER, 0, ANIM_Mario_Crouch)
    EVT_CALL(GetItemPower, ITEM_STONE_CAP, LVar0, LVar1)
    EVT_CALL(PlaySound, SOUND_362)
    EVT_CALL(N(func_802A123C_7217DC))
    EVT_CALL(GetActorPos, ACTOR_PLAYER, LVar0, LVar1, LVar2)
    EVT_WAIT(20)
    EVT_RETURN
    EVT_END
};
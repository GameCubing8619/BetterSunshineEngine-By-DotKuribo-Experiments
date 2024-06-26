#include <SMS/macros.h>

#include "module.hxx"

#include "bmg.hxx"
#include "libs/global_unordered_map.hxx"

using namespace BetterSMS;

static BetterSMS::TGlobalUnorderedMap<u8, BMG::BMGCommandCallback> sBMGCommandCBs(32);

BETTER_SMS_FOR_EXPORT bool BetterSMS::BMG::registerBMGCommandCallback(u8 identifier,
                                                                      BMGCommandCallback cb) {
    if (sBMGCommandCBs.find(identifier) != sBMGCommandCBs.end())
        return false;
    sBMGCommandCBs[identifier] = cb;
    return true;
}

static void formatCustomBMGCommands() {}
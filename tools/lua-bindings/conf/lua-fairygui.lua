module 'fairygui'

output_dir "../../frameworks/cclua/src/lua-bindings"

api_dir "../../addons/cclua/fairygui"

headers [[
#include "lua-bindings/lua_cocos2d_types.h"
#include "lua-bindings/lua_conv_manual.h"
#include "FairyGUI.h"
#include "GLoader3D.h"
#include "tween/EaseManager.h"
#include "tween/GPath.h"
#include "display/FUISprite.h"
#include "utils/html/HtmlElement.h"
#include "utils/html/HtmlObject.h"
#include "utils/html/HtmlParser.h"
]]

codeblock[[
bool olua_is_fairygui_EventTag(lua_State *L, int idx)
{
    return olua_isinteger(L, idx) || olua_isa<void>(L, idx);
}

void olua_check_fairygui_EventTag(lua_State *L, int idx, fairygui::EventTag *value)
{
    if (!value) {
        luaL_error(L, "value is NULL");
    }
    if (olua_isinteger(L, idx)) {
        *value = (int)olua_tointeger(L, idx);
    } else {
        *value = olua_checkobj<void>(L, idx);
    }
}]]

luaopen [[cclua::runtime::registerFeature("fairygui", true);]]

luacls(function (cppname)
    cppname = string.gsub(cppname, '^fairygui::', 'fgui.')
    cppname = string.gsub(cppname, '::', '.')
    return cppname
end)

exclude_type 'fairygui::ByteBuffer'
exclude_type 'fairygui::GObjectPool'

typedef 'fairygui::EventTag'

typeconf 'fairygui::VectorTreeNode'
typeconf 'fairygui::Margin'
typeconf 'fairygui::HtmlParseOptions'

typeconf 'fairygui::TweenValue'
    -- .var '*' .optional 'true'

typeconf 'fairygui::UIEventType'
    .indexerror 'r'
typeconf 'fairygui::EventCallback'

typeconf 'fairygui::UIEventDispatcher'
    .codeblock[[
        static std::string makeListenerTag(lua_State *L, lua_Integer type, int tagidx)
        {
            char buf[64];
            intptr_t tag = 0;
            if (tagidx > 0) {
                if (olua_isinteger(L, tagidx)) {
                    tag = (intptr_t)olua_tointeger(L, tagidx);
                } else {
                    tag = (intptr_t)olua_checkobj<void>(L, tagidx);
                }
            }
            if (type < 0) {
                snprintf(buf, sizeof(buf), "listeners.");
            } else if (tag > 0) {
                snprintf(buf, sizeof(buf), "listeners.%d.%p", (int)type, (void *)tag);
            } else {
                snprintf(buf, sizeof(buf), "listeners.%d.", (int)type);
            }
            return std::string(buf);
        }
    ]]
    .func 'addEventListener'
        .tag_maker "makeListenerTag(L, #1, 0)"
        .tag_mode 'new'
    .func 'addEventListener(int, const fairygui::EventCallback &, const fairygui::EventTag &)'
        .tag_maker 'makeListenerTag(L, #1, 4)'
        .tag_mode 'new'
    .func 'removeEventListener'
        .tag_maker "makeListenerTag(L, #1, 0)"
        .tag_mode 'startwith'
    .func 'removeEventListener(int, const fairygui::EventTag &)'
        .tag_maker "makeListenerTag(L, #1, 3)"
        .tag_mode "equal"
    .func 'removeEventListeners'
        .tag_maker 'makeListenerTag(L, -1, 0)'
        .tag_mode 'startwith'

typeconf 'fairygui::EventContext'
typeconf 'fairygui::IHitTest'
typeconf 'fairygui::PixelHitTest'
typeconf 'fairygui::PixelHitTestData'

typeconf 'fairygui::InputProcessor::CaptureEventCallback'

typeconf 'fairygui::InputProcessor'
    .func 'setCaptureCallback' .arg1 '@nullable'

typeconf 'fairygui::InputEvent'
typeconf 'fairygui::TextFormat'
typeconf 'fairygui::EaseType'
typeconf 'fairygui::EaseManager'
typeconf 'fairygui::TweenPropType'
typeonly 'fairygui::GPath'

typeconf 'fairygui::GTweener::GTweenCallback'
typeconf 'fairygui::GTweener::GTweenCallback0'

typeconf 'fairygui::GTweener'
    .func 'onUpdate' .tag_usepool 'false'
    .func 'onStart' .tag_usepool 'false'
    .func 'onComplete' .tag_usepool 'false'
    .func 'onComplete1' .tag_usepool 'false'

local def_gtween_ref = [[
    olua_pushclassobj<fairygui::GTween>(L);
    olua_addref(L, -1, "tweeners", -2, OLUA_REF_MULTI);
    olua_visitrefs(L, -1, "tweeners", should_del_tweener_ref);
    lua_pop(L, 1);
]]

typeconf 'fairygui::GTween'
    .codeblock[[
        static bool should_del_tweener_ref(lua_State *L, int idx)
        {
            if (olua_isa<fairygui::GTweener>(L, idx)) {
                fairygui::GTweener *obj = olua_toobj<fairygui::GTweener>(L, idx);
                if (obj->getReferenceCount() == 1 || obj->allCompleted()) {
                    return true;
                }
            }
            return false;
        }]]
    .func 'to' .insert_after(def_gtween_ref)
    .func 'toColor' .insert_after(def_gtween_ref)
    .func 'toDouble' .insert_after(def_gtween_ref)
    .func 'delayedCall' .insert_after(def_gtween_ref)
    .func 'shake' .insert_after(def_gtween_ref)
    .func 'kill'
        .insert_after [[
            olua_pushclassobj<fairygui::GTween>(L);
            olua_visitrefs(L, -1, "tweeners", should_del_tweener_ref);
            lua_pop(L, 1);
        ]]
    .func 'clean'
        .insert_after [[
            olua_pushclassobj<fairygui::GTween>(L);
            olua_delallrefs(L, -1, "tweeners");
            lua_pop(L, 1);
        ]]

typeconf 'fairygui::UIPackage'

typeconf 'fairygui::PackageItem'
    .exclude 'rawData'
    .exclude 'pixelHitTestData'
    .exclude 'extensionCreator'
    .exclude 'bitmapFont'
    .exclude 'scale9Grid'
    .exclude 'highResolution'

typeconf 'fairygui::PackageItemType'
typeconf 'fairygui::ObjectType'
typeconf 'fairygui::ButtonMode'
typeconf 'fairygui::ChildrenRenderOrder'
typeconf 'fairygui::OverflowType'
typeconf 'fairygui::ScrollType'
typeconf 'fairygui::ScrollBarDisplayType'
typeconf 'fairygui::LoaderFillType'
typeconf 'fairygui::ProgressTitleType'
typeconf 'fairygui::ListLayoutType'
typeconf 'fairygui::ListSelectionMode'
typeconf 'fairygui::GroupLayoutType'
typeconf 'fairygui::PopupDirection'
typeconf 'fairygui::AutoSizeType'
typeconf 'fairygui::FlipType'
typeconf 'fairygui::TransitionActionType'
typeconf 'fairygui::FillMethod'
typeconf 'fairygui::FillOrigin'
typeconf 'fairygui::ObjectPropID'
typeconf 'fairygui::GController'

typeconf 'fairygui::GObject'
    .exclude 'constructFromResource'
    .func 'getGroup' .ret '@addref(^)'
    .func 'setGroup' .arg1 '@addref(^)'
    .func 'globalToLocal' .arg1 '@pack'
    .func 'localToGlobal' .arg1 '@pack'
    .func 'transformRect' .arg1 '@pack'
    .func 'displayObject' .ret '@addref(^)'
    .func 'center'
        .insert_before [[
            if (!self->getParent() && !fairygui::UIRoot) {
                luaL_error(L, "UIRoot and parent are both nullptr");
            }
        ]]
    .func 'makeFullScreen'
        .insert_before [[
            if (!fairygui::UIRoot) {
                luaL_error(L, "UIRoot is nullptr");
            }
        ]]
    .prop 'relations' .get 'fairygui::Relations *relations()'
    .prop 'displayObject' .get 'cocos2d::Node *displayObject()'
    .func 'addClickListener'
        .tag_maker 'makeListenerTag(L, fairygui::UIEventType::Click, 0)'
        .tag_mode 'new'
    .func 'addClickListener(int, const fairygui::EventCallback &, const fairygui::EventTag &)'
        .tag_maker 'makeListenerTag(L, fairygui::UIEventType::Click, 3)'
        .tag_mode 'new'
    .func 'removeClickListener'
        .tag_maker 'makeListenerTag(L, fairygui::UIEventType::Click, 2)'
        .tag_mode 'equal'

typeconf 'fairygui::GComponent'
    .codeblock[[
        static int _olua_fun_fairygui_GComponent_getController(lua_State *L);
        static int _olua_fun_fairygui_GComponent_getTransition(lua_State *L);
        static int _olua_fun_fairygui_GComponent_getChild(lua_State *L);
    ]]
    .exclude 'constructFromResource'
    .func 'addChild' .arg1 '@addref(children |)'
    .func 'addChildAt' .arg1 '@addref(children |)'
    .func 'removeChild' .arg1 '@delref(children |)'
    .func 'removeChildAt' .ret '@delref(children ~)'
    .func 'removeChildren' .ret '@delref(children ~)'
    .func 'getChildAt' .ret '@addref(children |)'
    .func 'getChild' .ret '@addref(children |)'
    .func 'getChildInGroup' .ret '@addref(children |)'
    .func 'getChildById' .ret '@addref(children |)'
    .func 'getChildren' .ret '@addref(children |)'
    .func 'addController' .arg1 '@addref(controllers |)'
    .func 'getControllerAt' .ret '@addref(controllers |)'
    .func 'getController' .ret '@addref(controllers |)'
    .func 'getControllers' .ret '@addref(controllers |)'
    .func 'removeController' .arg1 '@delref(controllers |)'
    .func 'getTransition' .ret '@addref(transitions |)'
    .func 'getTransitionAt' .ret '@addref(transitions |)'
    .func 'getTransitions' .ret '@addref(transitions |)'
    .func 'getMask' .ret '@addref(^)'
    .func 'setMask' .arg1 '@addref(^)'
    .prop 'numChildren' .get 'int numChildren()'
    .func '__index'
        .body [[
        {
            if(olua_isuserdata(L, 1)) {
                if (olua_isstring(L, 2)) {
                    auto self = olua_toobj<fairygui::GComponent>(L, 1);
                    fairygui::GObject *child = self->getChild(olua_tostring(L, 2));
                    if (child) {
                        olua_pushobj<fairygui::GObject>(L, child);
                        olua_addref(L, 1, "children", -1, OLUA_REF_MULTI);
                        return 1;
                    }
                }
                lua_settop(L, 2);
                olua_getvariable(L, 1);
                return 1;
            } else {
                return 0;
            }
        }]]
    .func 'resolve'
        .luacats [[
            ---@param name string
            ---@return unknown
        ]]
        .body [[
        {
            auto self = olua_toobj<fairygui::GComponent>(L, 1);
            const char *name = olua_checkstring(L, 2);
            char type = '.';
            while (true) {
                const char *sep = strpbrk(name, ".~#");
                if (sep == name) {
                    type = *sep;
                    ++name;
                    continue;
                }
                if (!sep) {
                    sep = name + strlen(name);
                }
                if (type == '#') {
                    lua_pushcfunction(L, _olua_fun_fairygui_GComponent_getController);
                } else if (type == '~') {
                    lua_pushcfunction(L, _olua_fun_fairygui_GComponent_getTransition);
                } else {
                    lua_pushcfunction(L, _olua_fun_fairygui_GComponent_getChild);
                }
                olua_pushobj<fairygui::GComponent>(L, self);
                lua_pushlstring(L, name, sep - name);
                lua_call(L, 2, 1);

                if (type != '.' || *sep == '\0') {
                    return 1;
                } else if (olua_isa<fairygui::GComponent>(L, -1)) {
                    self = olua_toobj<fairygui::GComponent>(L, -1);
                    name = sep;
                } else {
                    return 0;
                }
            }
            return 0;
        }]]

local push_groot_parent = [[
    int parent = 1;
    if (arg1->getParent()) {
        olua_pushobj<fairygui::GComponent>(L, arg1->getParent());
        parent = lua_gettop(L);
    }
]]

typeconf 'fairygui::GRoot'
    .func 'showWindow' .ret '@delref(children ~)' .arg1 '@addref(children |)'
    .func 'hideWindow' .ret '@delref(children ~ parent)' .insert_before(push_groot_parent)
    .func 'hideWindowImmediately' .ret '@delref(children ~ parent)' .insert_before(push_groot_parent)
    .func 'getTopWindow' .ret '@addref(children |)'
    .func 'getModalWaitingPane' .ret '@addref(children |)'
    .func 'getModalLayer' .ret '@addref(children |)'
    .func 'showPopup' .ret '@delref(children ~)' .arg1 '@addref(children |)'
    .func 'togglePopup' .ret '@delref(children ~)' .arg1 '@addref(children |)'
    .func 'hidePopup' .ret '@delref(children ~)'
    .func 'getInputProcessor' .ret '@addref(^)'
    .func 'worldToRoot' .arg1 '@pack'
    .func 'rootToWorld' .arg1 '@pack'
    .func 'create'
        .insert_after [[
            olua_pushobj<cocos2d::Node>(L, ret->displayObject());
            olua_addref(L, -1, "fgui.root", -2, OLUA_REF_ALONE);
            olua_addref(L, 1, "children", -1, OLUA_REF_MULTI);
            lua_pop(L, 1);
        ]]
    .prop 'UIRoot' .get 'static fairygui::GRoot *getInstance()'

typeconf 'fairygui::GGroup'
typeconf 'fairygui::GScrollBar'

typeconf 'fairygui::GLoader'
    .func 'getComponent' .ret '@addref(^)'

typeconf 'fairygui::GLoader3D'
    .func 'getContent' .ret '@addref(^)'
    .func 'setContent' .arg1 '@addref(^)'

typeconf 'fairygui::GTextField'
typeconf 'fairygui::GBasicTextField'

typeconf 'fairygui::GGraph'

typeconf 'fairygui::GButton'
    .func 'getRelatedController' .ret '@addref(^)'
    .func 'setRelatedController' .arg1 '@addref(^)'
    .func 'getTextField' .ret '@addref(^)'

typeconf 'fairygui::GImage'

typeconf 'fairygui::GLabel'
    .func 'getTextField' .ret '@addref(^)'

typeconf 'fairygui::GList::ListItemRenderer'
typeconf 'fairygui::GList::ListItemProvider'

typeconf 'fairygui::GList'
    .func 'returnToPool' .arg1 '@delref(children |)'
    .func 'addItemFromPool' .ret '@addref(children |)'
    .func 'removeChildToPoolAt' .ret '@delref(children ~)'
    .func 'removeChildToPool' .arg1 '@delref(children |)'
    .func 'removeChildrenToPool' .ret '@delref(children ~)'
    .func 'getSelectionController' .ret '@addref(^)'
    .func 'setSelectionController' .arg1 '@addref(^)'
    .func 'setVirtual' .ret '@delref(children ~)'
    .func 'setVirtualAndLoop' .ret '@delref(children ~)'
    .func 'setNumItems' .ret '@delref(children ~)'
    .func 'itemRenderer' .tag_usepool 'false'
        .insert_cbefore [[
            olua_pushobj<fairygui::GComponent>(L, (fairygui::GComponent *)cb_store);
            olua_addref(L, -1, "children", top + 2, OLUA_REF_MULTI);
            lua_pop(L, 1);
        ]]

typeconf 'fairygui::GMovieClip'
typeconf 'fairygui::GProgressBar'

typeconf 'fairygui::GComboBox'
    .func 'getSelectionController' .ret '@addref(^)'
    .func 'setSelectionController' .arg1 '@addref(^)'
    .func 'getDropdown' .ret '@addref(^)'
    .func 'getTextField' .ret '@addref(^)'

typeconf 'fairygui::GRichTextField'
typeconf 'fairygui::GSlider'
typeconf 'fairygui::GTextInput'

local push_popup_menu_parent = [[
    olua_pushobj<fairygui::GList>(L, self->getList());
    int parent = lua_gettop(L);
]]

typeconf 'fairygui::PopupMenu'
    .func 'removeItem' .ret '@delref(children ~ parent)' .insert_before(push_popup_menu_parent)
    .func 'clearItems' .ret '@delref(children ~ parent)' .insert_before(push_popup_menu_parent)
    .func 'getContentPane' .ret '@addref(^)'
    .func 'getList' .ret '@addref(^)'
    .func 'show'
        .ret '@delref(children ~ parent)@addref(children | parent)'
        .insert_before [[
            fairygui::GRoot *root = fairygui::UIRoot;
            if (lua_gettop(L) > 1) {
                fairygui::GObject *target = olua_checkobj<fairygui::GObject>(L, 2);
                root = target->getRoot();
            }
            if (!root) {
                luaL_error(L, "no root to add 'PopupMenu'");
            }
            olua_pushobj<fairygui::GRoot>(L, root);
            int parent = lua_gettop(L);
        ]]
    .func 'addItem'
        .ret '@addref(children | parent)'
        .tag_maker 'makeListenerTag(L, fairygui::UIEventType::ClickMenu, 0)'
        .tag_mode 'replace'
        .tag_store '-1'
        .insert_before(push_popup_menu_parent)
    .func 'addItemAt'
        .ret '@addref(children | parent)'
        .tag_maker 'makeListenerTag(L, fairygui::UIEventType::ClickMenu, 0)'
        .tag_mode 'replace'
        .tag_store '-1'
        .insert_before(push_popup_menu_parent)

typeconf 'fairygui::Relations'
    .func 'copyFrom'
        .body [[
        {
            fairygui::Relations *self = olua_toobj<fairygui::Relations>(L, 1);
            fairygui::Relations &source = *olua_checkobj<fairygui::Relations>(L, 2);
            self->copyFrom(source);
            return 0;
        }]]
typeconf 'fairygui::RelationType'

typeconf 'fairygui::RelationItem'
    .func 'getTarget' .ret '@addref(^)'
    .func 'setTarget' .arg1 '@addref(^)'
    .func 'copyFrom'
        .body [[
        {
            fairygui::RelationItem *self = olua_toobj<fairygui::RelationItem>(L, 1);
            fairygui::RelationItem &source = *olua_checkobj<fairygui::RelationItem>(L, 2);
            self->copyFrom(source);
            return 0;
        }]]

typeconf 'fairygui::ScrollPane'
    .func 'getOwner' .ret '@addref(^)'
    .func 'getHeader' .ret '@addref(^)'
    .func 'getFooter' .ret '@addref(^)'
    .func 'getVtScrollBar' .ret '@addref(^)'
    .func 'getHzScrollBar' .ret '@addref(^)'
    .func 'getPageController' .ret '@addref(^)'
    .func 'setPageController' .arg1 '@addref(^)'

typeconf 'fairygui::Transition::PlayCompleteCallback'
typeconf 'fairygui::Transition::TransitionHook'

typeconf 'fairygui::Transition'
    .func 'getOwner' .ret '@addref(^)'
    .func 'play'
        .tag_maker 'play'
        .tag_mode 'replace'
    .func 'playReverse'
        .tag_maker 'playReverse'
        .tag_mode 'replace'
    .func 'setHook'
        .arg2 '@nullable'
        .tag_maker '("hook." + #1)'
        .tag_mode 'replace'
    .func 'clearHooks'
        .tag_maker '("hook.")'
        .tag_mode 'startwith'

typeconf 'fairygui::UIConfig'

typeconf 'fairygui::IUISource'
    .func 'load' .arg1 '@nullable'
typeconf 'fairygui::UISource'

local push_uiroot = [[
    fairygui::GComponent *root = self->getParent() ? self->getParent() : fairygui::UIRoot;
    if (!root) {
        return 0;
    }
    olua_pushobj<fairygui::GComponent>(L, root);
    int parent = lua_gettop(L);
]]

typeconf 'fairygui::Window'
    .func 'show'
        .ret '@delref(children ~ parent)@addref(children | parent)'
        .insert_before [[
            fairygui::GComponent *root = fairygui::UIRoot;
            if (!root) {
                luaL_error(L, "no root to add 'Window'");
            }
            olua_pushobj<fairygui::GComponent>(L, root);
            int parent = lua_gettop(L);
        ]]
    .func 'hide' .ret '@delref(children ~ parent)' .insert_before(push_uiroot)
    .func 'hideImmediately' .ret '@delref(children ~ parent)' .insert_before(push_uiroot)
    .func 'getContentPane' .ret '@addref(^)'
    .func 'setContentPane' .arg1 '@addref(^)'
    .func 'getFrame' .ret '@addref(^)'
    .func 'getCloseButton' .ret '@addref(^)'
    .func 'setCloseButton' .arg1 '@addref(^)'
    .func 'getDragArea' .ret '@addref(^)'
    .func 'setDragArea' .arg1 '@addref(^)'
    .func 'getContentArea' .ret '@addref(^)'
    .func 'setContentArea' .arg1 '@addref(^)'
    .func 'getModalWaitingPane' .ret '@addref(^)'

typeconf 'fairygui::DragDropManager'
typeconf 'fairygui::UIObjectFactory::GLoaderCreator'
typeconf 'fairygui::UIObjectFactory::GComponentCreator'
typeconf 'fairygui::UIObjectFactory'

typeconf 'fairygui::GearBase'
    .exclude 'getController'
    .exclude 'setController'
    .exclude 'getTweenConfig'
    .exclude 'updateFromRelations'
    .exclude 'apply'
    .exclude 'updateState'
    .exclude 'setup'

typeconf 'fairygui::GTreeNode'
    .func 'getCell' .ret '@addref(cell ^)'
    .func 'addChild' .arg1 '@addref(children |)'
    .func 'addChildAt' .arg1 '@addref(children |)'
    .func 'removeChild' .arg1 '@delref(children |)'
    .func 'removeChildAt' .ret '@delref(children ~)'
    .func 'removeChildren' .ret '@delref(children ~)'
    .func 'getChildAt' .ret '@addref(children |)'
    .func 'getPrevSibling' .ret '@addref(children |)'
    .func 'getNextSibling' .ret '@addref(children |)'
    .prop 'numChildren' .get 'int numChildren()'

typeconf 'fairygui::GTree::TreeNodeRenderFunction'
typeconf 'fairygui::GTree::TreeNodeWillExpandFunction'

typeconf 'fairygui::GTree'
    .func 'getList' .ret '@addref(^)'
    .func 'getRootNode' .ret '@addref(^)'
    .func 'getSelectedNode' .ret '@addref(nodes |)'
    .func 'getSelectedNodes' .arg1 '@addref(nodes |)'
    .func 'treeNodeRender'
        .tag_usepool 'false'
        .insert_cbefore [[
            olua_pushobj<fairygui::GComponent>(L, (fairygui::GComponent *)cb_store);
            olua_addref(L, -1, "nodes", top + 1, OLUA_REF_MULTI);
            olua_addref(L, -1, "children",top + 2, OLUA_REF_MULTI);
            lua_pop(L, 1);
        ]]
    .func 'treeNodeWillExpand' .tag_usepool 'false'
        .insert_cbefore [[
            olua_pushobj<fairygui::GComponent>(L, (fairygui::GComponent *)cb_store);
            olua_addref(L, -1, "nodes", top + 1, OLUA_REF_MULTI);
            lua_pop(L, 1);
        ]]

typeconf 'fairygui::FUIContainer'
typeconf 'fairygui::FUIInput'
typeconf 'fairygui::FUILabel'
typeconf 'fairygui::FUIRichText'
typeconf 'fairygui::FUISprite'
typeconf 'fairygui::HtmlObject'
typeconf 'fairygui::HtmlElement::Type'
typeconf 'fairygui::HtmlElement'

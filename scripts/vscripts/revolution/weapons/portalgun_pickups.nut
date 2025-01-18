VIEWMODEL_CLEAN <- "models/weapons/v_portalgun_clean.mdl"
VIEWMODEL_DIRTY <- "models/weapons/v_portalgun_dirty.mdl"
VIEWMODEL_PROTO <- "models/weapons/v_portalgun.mdl"

function ApplyViewmodelClean(){
    GetPlayer().SetViewModel(VIEWMODEL_CLEAN);
}
function ApplyViewmodelDirty(){
    GetPlayer().SetViewModel(VIEWMODEL_DIRTY);
}
function ApplyViewmodelProto(){
    GetPlayer().SetViewModel(VIEWMODEL_PROTO);
}
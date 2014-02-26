.class public abstract Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
.super Ljava/lang/Object;
.source "PlugItem.java"

# interfaces
.implements Lcom/jingdong/app/mall/plug/framework/plug/IPlugItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;
    }
.end annotation


# static fields
.field public static final KEY_PLUGID:Ljava/lang/String; = "plugId"

.field public static final KEY_PLUGKEY:Ljava/lang/String; = "plugkey"

.field public static final KEY_PLUGNAME:Ljava/lang/String; = "plugName"

.field public static final KEY_description:Ljava/lang/String; = "description"

.field public static final KEY_downUrl:Ljava/lang/String; = "downUrl"

.field public static final KEY_group:Ljava/lang/String; = "group"

.field public static final KEY_lastTime:Ljava/lang/String; = "lastTime"

.field public static final KEY_launch:Ljava/lang/String; = "launch"

.field public static final KEY_launchCls:Ljava/lang/String; = "launchCls"

.field public static final KEY_picUrl:Ljava/lang/String; = "picUrl"

.field public static final KEY_plugType:Ljava/lang/String; = "plugType"

.field public static final KEY_process:Ljava/lang/String; = "process"

.field public static final KEY_screen:Ljava/lang/String; = "screen"

.field public static final KEY_size:Ljava/lang/String; = "size"

.field public static final KEY_update:Ljava/lang/String; = "update"

.field public static final KEY_version:Ljava/lang/String; = "version"

.field public static final KEY_xmlUrl:Ljava/lang/String; = "xmlUrl"

.field public static final PLUG_TYPE_DAMICAPK:I = 0x1

.field public static final PLUG_TYPE_M:I = 0x2

.field public static final PLUG_TYPE_PHONEGAP:I = 0x4

.field public static final PLUG_TYPE_STAND_APK:I = 0x3


# instance fields
.field public date:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public downFilePath:Ljava/lang/String;

.field public downloadUrl:Ljava/lang/String;

.field public error:Ljava/lang/String;

.field public group:Ljava/lang/String;

.field public iconSource:I

.field public intallPath:Ljava/lang/String;

.field public lastTime:J

.field public launch:I

.field public lunchPath:Ljava/lang/String;

.field public picUrl:Ljava/lang/String;

.field public plugId:Ljava/lang/String;

.field public plugKey:Ljava/lang/String;

.field public plugName:Ljava/lang/String;

.field public plugType:I

.field public process:I

.field public progress:J

.field public screen:I

.field public size:J

.field public status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

.field public total:J

.field public update:I

.field public version:Ljava/lang/String;

.field public xmlUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "json"

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    .line 170
    const-string v0, "plugName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugName:Ljava/lang/String;

    .line 171
    const-string v0, "plugId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    .line 172
    const-string v0, "version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    .line 173
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->description:Ljava/lang/String;

    .line 174
    const-string v0, "picUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->picUrl:Ljava/lang/String;

    .line 175
    const-string v0, "downUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downloadUrl:Ljava/lang/String;

    .line 176
    const-string v0, "plugkey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugKey:Ljava/lang/String;

    .line 177
    const-string v0, "size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->size:J

    .line 178
    const-string v0, "plugType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugType:I

    .line 179
    const-string v0, "lastTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lastTime:J

    .line 180
    const-string v0, "launch"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->launch:I

    .line 181
    const-string v0, "update"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->update:I

    .line 182
    const-string v0, "screen"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->screen:I

    .line 183
    const-string v0, "process"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->process:I

    .line 184
    const-string v0, "group"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->group:Ljava/lang/String;

    .line 185
    const-string v0, "xmlUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->xmlUrl:Ljava/lang/String;

    .line 186
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->total:J

    .line 187
    return-void
.end method

.method public static createPlug(I)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .locals 1
    .parameter "code"

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 224
    .local v0, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    packed-switch p0, :pswitch_data_0

    .line 239
    :goto_0
    return-object v0

    .line 226
    :pswitch_0
    new-instance v0, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;

    .end local v0           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    invoke-direct {v0}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;-><init>()V

    .line 228
    .restart local v0       #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    goto :goto_0

    .line 230
    :pswitch_1
    new-instance v0, Lcom/jingdong/app/mall/plug/framework/plug/MWebPlug;

    .end local v0           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    invoke-direct {v0}, Lcom/jingdong/app/mall/plug/framework/plug/MWebPlug;-><init>()V

    .restart local v0       #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createPlug(Lorg/json/JSONObject;)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    .locals 3
    .parameter "object"

    .prologue
    .line 198
    const-string v2, "plugType"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, code:I
    const/4 v1, 0x0

    .line 202
    .local v1, plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    packed-switch v0, :pswitch_data_0

    .line 216
    :goto_0
    return-object v1

    .line 204
    :pswitch_0
    new-instance v1, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;

    .end local v1           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/plug/framework/plug/DynamicAPKPlug;-><init>(Lorg/json/JSONObject;)V

    .line 205
    .restart local v1       #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    goto :goto_0

    .line 207
    :pswitch_1
    new-instance v1, Lcom/jingdong/app/mall/plug/framework/plug/MWebPlug;

    .end local v1           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/plug/framework/plug/MWebPlug;-><init>(Lorg/json/JSONObject;)V

    .line 208
    .restart local v1       #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    goto :goto_0

    .line 210
    :pswitch_2
    new-instance v1, Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;

    .end local v1           #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/plug/framework/plug/StandAPKPlug;-><init>(Lorg/json/JSONObject;)V

    .line 211
    .restart local v1       #plug:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;
    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static status(I)Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;
    .locals 1
    .parameter "value"

    .prologue
    .line 46
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->WAIT:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 47
    .local v0, status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;
    packed-switch p0, :pswitch_data_0

    .line 75
    :goto_0
    return-object v0

    .line 49
    :pswitch_0
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->UNDOWNLOAD:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 50
    goto :goto_0

    .line 52
    :pswitch_1
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->DOWNLOADING:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 53
    goto :goto_0

    .line 55
    :pswitch_2
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->DOWNLOADED:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 56
    goto :goto_0

    .line 58
    :pswitch_3
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->INSTALLING:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 59
    goto :goto_0

    .line 61
    :pswitch_4
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->INSTALLED:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 62
    goto :goto_0

    .line 64
    :pswitch_5
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->HAS_UPDATE:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 65
    goto :goto_0

    .line 67
    :pswitch_6
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->DOWNLOAD_FAIL:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 68
    goto :goto_0

    .line 70
    :pswitch_7
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->WAIT:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 71
    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public cloneFromLocalProperties(Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;)V
    .locals 2
    .parameter "plugItem"

    .prologue
    const/4 v1, -0x2

    .line 334
    if-nez p1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 339
    iget-object v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    .line 342
    :cond_2
    iget v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->launch:I

    if-eq v0, v1, :cond_3

    .line 343
    iget v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->launch:I

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->launch:I

    .line 349
    :cond_3
    iget-object v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 350
    iget-object v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    .line 353
    :cond_4
    iget-object v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 354
    iget-object v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugKey:Ljava/lang/String;

    .line 357
    :cond_5
    iget-object v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 358
    iget-object v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugName:Ljava/lang/String;

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugName:Ljava/lang/String;

    .line 361
    :cond_6
    iget v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugType:I

    if-eq v0, v1, :cond_7

    .line 362
    iget v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugType:I

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugType:I

    .line 365
    :cond_7
    iget v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->screen:I

    if-eq v0, v1, :cond_8

    .line 366
    iget v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->screen:I

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->screen:I

    .line 377
    :cond_8
    iget-object v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 253
    instance-of v0, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    iget-object v0, v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    check-cast p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;

    .end local p1
    iget-object v1, p1, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 256
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDownloadPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getInstalledPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->getDownloadPath(Landroid/content/Context;)Ljava/lang/String;

    .line 270
    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->downFilePath:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, fileName:Ljava/lang/String;
    sget v1, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->SPACE_ONLY_INTERNAL:I

    const-string v2, "plugs/dynamicAPKPlug"

    invoke-static {v1, v2, v0}, Lcom/jingdong/app/mall/plug/utils/FilePathSelector;->getPath(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->intallPath:Ljava/lang/String;

    return-object v1
.end method

.method public getInt(Ljava/util/Properties;Ljava/lang/String;)I
    .locals 3
    .parameter "properties"
    .parameter "key"

    .prologue
    .line 308
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 311
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 316
    :goto_0
    return v2

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, -0x2

    goto :goto_0
.end method

.method public getLong(Ljava/util/Properties;Ljava/lang/String;)J
    .locals 4
    .parameter "properties"
    .parameter "key"

    .prologue
    .line 321
    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 329
    :goto_0
    return-wide v2

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 329
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/util/Properties;)V
    .locals 2
    .parameter "properties"

    .prologue
    .line 290
    const-string v0, "launchCls"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lunchPath:Ljava/lang/String;

    .line 291
    const-string v0, "launch"

    invoke-virtual {p0, p1, v0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->getInt(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->launch:I

    .line 292
    const-string v0, "description"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->description:Ljava/lang/String;

    .line 293
    const-string v0, "lastTime"

    invoke-virtual {p0, p1, v0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->getInt(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->lastTime:J

    .line 294
    const-string v0, "picUrl"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->picUrl:Ljava/lang/String;

    .line 295
    const-string v0, "plugId"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugId:Ljava/lang/String;

    .line 296
    const-string v0, "plugkey"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugKey:Ljava/lang/String;

    .line 297
    const-string v0, "plugName"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugName:Ljava/lang/String;

    .line 298
    const-string v0, "plugType"

    invoke-virtual {p0, p1, v0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->getInt(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->plugType:I

    .line 299
    const-string v0, "screen"

    invoke-virtual {p0, p1, v0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->getInt(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->screen:I

    .line 300
    const-string v0, "size"

    invoke-virtual {p0, p1, v0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->getLong(Ljava/util/Properties;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->size:J

    .line 301
    const-string v0, "update"

    invoke-virtual {p0, p1, v0}, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->getInt(Ljava/util/Properties;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->update:I

    .line 302
    const-string v0, "version"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->version:Ljava/lang/String;

    .line 303
    sget-object v0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;->DOWNLOADED:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    iput-object v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->status:Lcom/jingdong/app/mall/plug/framework/plug/PlugItem$PlugStatus;

    .line 304
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->total:J

    .line 305
    return-void
.end method

.method public showImage(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "plugLogo"

    .prologue
    .line 243
    iget v0, p0, Lcom/jingdong/app/mall/plug/framework/plug/PlugItem;->iconSource:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    return-void
.end method

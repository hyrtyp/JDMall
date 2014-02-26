.class public Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;
.super Ljava/lang/Object;
.source "HttpGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/utils/HttpGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpGroupSetting"
.end annotation


# static fields
.field public static final PRIORITY_FILE:I = 0x1f4

.field public static final PRIORITY_IMAGE:I = 0x1388

.field public static final PRIORITY_JSON:I = 0x3e8

.field public static final TYPE_FILE:I = 0x1f4

.field public static final TYPE_IMAGE:I = 0x1388

.field public static final TYPE_JSON:I = 0x3e8


# instance fields
.field private myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private priority:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMyActivity()Lcom/jingdong/common/frame/IMyActivity;
    .locals 1

    .prologue
    .line 3087
    iget-object v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 3095
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->priority:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 3103
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->type:I

    return v0
.end method

.method public setMyActivity(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter "myActivity"

    .prologue
    .line 3091
    iput-object p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 3092
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 3099
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->priority:I

    .line 3100
    return-void
.end method

.method public setType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 3107
    iput p1, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->type:I

    .line 3108
    iget v0, p0, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->priority:I

    if-nez v0, :cond_0

    .line 3109
    sparse-switch p1, :sswitch_data_0

    .line 3118
    :cond_0
    :goto_0
    return-void

    .line 3111
    :sswitch_0
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setPriority(I)V

    goto :goto_0

    .line 3114
    :sswitch_1
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/jingdong/common/utils/HttpGroup$HttpGroupSetting;->setPriority(I)V

    goto :goto_0

    .line 3109
    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x1388 -> :sswitch_1
    .end sparse-switch
.end method

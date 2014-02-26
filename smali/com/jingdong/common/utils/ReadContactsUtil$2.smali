.class Lcom/jingdong/common/utils/ReadContactsUtil$2;
.super Lcom/jingdong/common/ui/DialogController;
.source "ReadContactsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/ReadContactsUtil;->showPermissonDialog(Lcom/jingdong/common/frame/IMyActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$webActivity:Lcom/jingdong/common/frame/IMyActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/ReadContactsUtil$2;->val$webActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 276
    invoke-direct {p0}, Lcom/jingdong/common/ui/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 281
    packed-switch p2, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 284
    :pswitch_0
    const-string v0, "isFirstReadContacts"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/CommonUtil;->putBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 285
    iget-object v0, p0, Lcom/jingdong/common/utils/ReadContactsUtil$2;->val$webActivity:Lcom/jingdong/common/frame/IMyActivity;

    #calls: Lcom/jingdong/common/utils/ReadContactsUtil;->forwardContacts(Lcom/jingdong/common/frame/IMyActivity;)V
    invoke-static {v0}, Lcom/jingdong/common/utils/ReadContactsUtil;->access$0(Lcom/jingdong/common/frame/IMyActivity;)V

    goto :goto_0

    .line 290
    :pswitch_1
    const-string v0, "isFirstReadContacts"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/CommonUtil;->putBooleanToPreference(Ljava/lang/String;Ljava/lang/Boolean;)Z

    .line 291
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

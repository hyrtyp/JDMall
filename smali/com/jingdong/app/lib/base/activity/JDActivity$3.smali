.class Lcom/jingdong/app/lib/base/activity/JDActivity$3;
.super Lcom/jingdong/app/lib/base/activity/DialogController;
.source "JDActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/lib/base/activity/JDActivity;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

.field private final synthetic val$xml:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/lib/base/activity/JDActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$3;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

    iput-object p2, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$3;->val$xml:Ljava/lang/String;

    .line 129
    invoke-direct {p0}, Lcom/jingdong/app/lib/base/activity/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 132
    packed-switch p2, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$3;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

    iget-object v2, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$3;->val$xml:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jingdong/app/lib/pay/PayUtils;->doPay(Lcom/jingdong/app/lib/base/activity/JDActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, result:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$3;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/jingdong/app/lib/base/activity/JDActivity;->setResult(ILandroid/content/Intent;)V

    .line 139
    iget-object v1, p0, Lcom/jingdong/app/lib/base/activity/JDActivity$3;->this$0:Lcom/jingdong/app/lib/base/activity/JDActivity;

    invoke-virtual {v1}, Lcom/jingdong/app/lib/base/activity/JDActivity;->finish()V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$33;

.field private final synthetic val$isCheckin:Ljava/lang/String;

.field private final synthetic val$meetingToken:Ljava/lang/String;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$33;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$33;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->val$isCheckin:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->val$meetingToken:Ljava/lang/String;

    .line 2715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2720
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$33;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$33;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isCanClickButton:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$72(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2739
    :cond_0
    :goto_0
    return-void

    .line 2723
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$33;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$33;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->avoidMoreTimeClicked()V
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$73(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 2724
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$33;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$33;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "JDAnnualMeeting"

    const-string v3, "entryTap"

    invoke-static {v3}, Lcom/jingdong/app/mall/amHelper/AmHelper;->getShakeParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/jingdong/common/utils/ShakeUtils;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2726
    const/4 v0, 0x0

    .line 2727
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->val$isCheckin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->val$isCheckin:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2728
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$33;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$33;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2729
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2730
    const-string v1, "token"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->val$meetingToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2731
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$33;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$33;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2732
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->val$isCheckin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->val$isCheckin:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2733
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$33;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$33;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/amHelper/AmCheckinActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2734
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2735
    const-string v1, "token"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->val$meetingToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2736
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$33;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$33;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

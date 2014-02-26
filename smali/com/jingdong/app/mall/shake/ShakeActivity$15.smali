.class Lcom/jingdong/app/mall/shake/ShakeActivity$15;
.super Ljava/lang/Object;
.source "ShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeActivity;->showNoShakeTimesToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$15;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    .line 1136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1140
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$15;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeActivity$15;->this$0:Lcom/jingdong/app/mall/shake/ShakeActivity;

    const v3, 0x7f070533

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/shake/ShakeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1141
    .local v0, toast:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 1142
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1143
    return-void
.end method

.class Lcom/jingdong/app/mall/amHelper/AmHelperActivity$3;
.super Ljava/lang/Object;
.source "AmHelperActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->avoidMoreTimeClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jingdong/app/mall/amHelper/AmHelperActivity$3;->this$0:Lcom/jingdong/app/mall/amHelper/AmHelperActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->isCanClickButton:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/amHelper/AmHelperActivity;->access$5(Lcom/jingdong/app/mall/amHelper/AmHelperActivity;Z)V

    .line 167
    return-void
.end method

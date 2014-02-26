.class Lcom/jingdong/app/mall/amHelper/AmShakeActivity$13;
.super Ljava/lang/Object;
.source "AmShakeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/amHelper/AmShakeActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/amHelper/AmShakeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/amHelper/AmShakeActivity$13;->this$0:Lcom/jingdong/app/mall/amHelper/AmShakeActivity;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 540
    invoke-static {}, Lcom/jingdong/app/mall/amHelper/AmHelper;->getInstance()Lcom/jingdong/app/mall/amHelper/AmHelper;

    .line 541
    return-void
.end method

.class Lcom/jingdong/app/mall/personel/PersonelActivity$31$1;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$31;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$31;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$31;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$31$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$31;

    .line 2651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$31$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$31;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$31;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$31;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$31;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingAssistantIcon:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$69(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2654
    return-void
.end method

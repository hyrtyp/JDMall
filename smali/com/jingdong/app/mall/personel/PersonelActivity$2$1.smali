.class Lcom/jingdong/app/mall/personel/PersonelActivity$2$1;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$2$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$2;

    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$2$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$2;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$2;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$2;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$2;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v0

    const/4 v1, 0x1

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->startToLoginActivity(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$37(Lcom/jingdong/app/mall/personel/PersonelActivity;I)V

    .line 645
    return-void
.end method

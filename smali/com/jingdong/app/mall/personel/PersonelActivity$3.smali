.class Lcom/jingdong/app/mall/personel/PersonelActivity$3;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->initComponent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$3;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$3;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isNormal:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$38(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 749
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$3;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$3;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const v2, 0x7f070283

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$3;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const v3, 0x7f070282

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->logout(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$39(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-void
.end method

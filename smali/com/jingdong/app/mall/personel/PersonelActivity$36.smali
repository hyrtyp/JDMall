.class Lcom/jingdong/app/mall/personel/PersonelActivity$36;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->logout(Ljava/lang/String;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$36;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 2801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$36;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->onLogout()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$75(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 2806
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2807
    return-void
.end method

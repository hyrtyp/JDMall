.class Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$7;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$7;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$7;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->access$1(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->queryOnlineAppointment()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$23(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 850
    return-void
.end method

.class Lcom/jingdong/app/mall/personel/PersonelActivity$38;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$38;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 2822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 2826
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$38;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->getScankey()Ljava/lang/String;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$11(Lcom/jingdong/app/mall/personel/PersonelActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2827
    sput-boolean v1, Lcom/jingdong/app/mall/amHelper/AmHelper;->isShowDialog:Z

    .line 2828
    sput-boolean v1, Lcom/jingdong/app/mall/personel/PersonelActivity;->annual_switch:Z

    .line 2830
    :cond_0
    return-void
.end method

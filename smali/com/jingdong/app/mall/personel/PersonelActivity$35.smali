.class Lcom/jingdong/app/mall/personel/PersonelActivity$35;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->avoidMoreTimeClicked()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$35;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 2756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2760
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$35;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isCanClickButton:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$74(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 2761
    return-void
.end method

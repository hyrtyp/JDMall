.class Lcom/jingdong/app/mall/personel/PersonelActivity$30$2;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$30;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$30;

.field private final synthetic val$dialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$30;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$30$2;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$30;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$30$2;->val$dialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 2613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$30$2;->val$dialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2618
    return-void
.end method

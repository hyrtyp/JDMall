.class Lcom/jingdong/app/mall/personel/MakeNewComments$3$2;
.super Ljava/lang/Object;
.source "MakeNewComments.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewComments$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MakeNewComments$3;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewComments$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3$2;->this$1:Lcom/jingdong/app/mall/personel/MakeNewComments$3;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$3$2;->this$1:Lcom/jingdong/app/mall/personel/MakeNewComments$3;

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MakeNewComments$3;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 339
    return-void
.end method

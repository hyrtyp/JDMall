.class Lcom/jingdong/app/mall/ErrorActivity$7;
.super Ljava/lang/Object;
.source "ErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/ErrorActivity;->onSubmitError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/ErrorActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/ErrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/ErrorActivity$7;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 239
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 240
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 242
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

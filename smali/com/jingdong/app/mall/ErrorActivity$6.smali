.class Lcom/jingdong/app/mall/ErrorActivity$6;
.super Ljava/lang/Object;
.source "ErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/ErrorActivity;->onDialog(Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/ErrorActivity$6;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 172
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    const/16 v1, 0x54

    if-eq p2, v1, :cond_0

    .line 177
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/jingdong/app/mall/more/SearchActivity$11;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SearchActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$11;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 556
    const-string v2, "http://union.m.jd.com/download/go.action?to=http%3A%2F%2Fapp.jd.com%2Fdownload%2Fandroid%2Fvoice.apk&client=android&unionId=12532&key=eb5ba3c113b616165e3d763a1f0ce731"

    .line 557
    .local v2, url:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 558
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 559
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SearchActivity$11;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    invoke-virtual {v3, v0}, Lcom/jingdong/app/mall/more/SearchActivity;->startActivityNoException(Landroid/content/Intent;)V

    .line 560
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 561
    return-void
.end method

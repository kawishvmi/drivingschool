  /*!
 * aksfileupload v1.0.0
 * File upload tool
 * (c) 2020 Ahmet Aksungur
 * MIT License
 * https://github.com/Ahmetaksungur
 */

(function ($) {
    "use strict";
    $.fn.aksFileUpload = function (options) {
      const aks = $(this);
      var settings = $.extend(
        {
          fileUpload: "",
          input: "#aksfileupload",
          fileType: [
            "pdf",
            "docx",
            "rtf",
            "jpg",
            "jpeg",
            "png",
            "txt",
            "mpa",
            "ogg",
            "aif",
            "cda",
            "mid",
            "midi",
            "mp3",
            "wav",
            "wma",
            "wpl",
            "7z",
            "arj",
            "deb",
            "pkg",
            "rar",
            "rpm",
            "tar.gz",
            "z",
            "zip",
            "csv",
            "dat",
            "db",
            "dbf",
            "log",
            "mdb",
            "sav",
            "sql",
            "tar",
            "xml",
            "apk",
            "exe",
            "jar",
            "py",
            "fnt",
            "fon",
            "otf",
            "ttf",
            "ai",
            "bmp",
            "gif",
            "ico",
            "jpeg",
            "jpg",
            "png",
            "ps",
            "psd",
            "svg",
            "tif",
            "tiff",
            "asp",
            "aspx",
            "css",
            "htm",
            "html",
            "js",
            "jsp",
            "php",
            "rss",
            "pps",
            "ppt",
            "pptx",
            "avi",
            "flv",
            "mov",
            "mp4",
            "mpg",
            "mpeg",
            "vob",
            "wmv",
            "doc",
            "rtf",
            "eps",
            "opus",
            "aep",
            "fig",
            "sketch"
          ],
          multiple: true,
          dragDrop: true,
          maxFile: 9999999999999999999,
          maxSize: "",
          ajaxUpload: false,
          ajax: {
            directlyLoad: false,
            url: "upload.php",
            type: "POST",
            data: "formData",
            contentType: false,
            processData: false,
            cache: false,
            async: true,
            enctype: "multipart/form-data"
          },
          maxFileError: "File exceeds upload limit. - Max limit:",
          maxSizeError: "File exceeds size. - Max limit:",
          fileTypeError: "Disallowed file format.",
          label: "Drag & Drop your files or Browse"
        },
        options
      );
      var customInput = settings.input.replace("#", "");
      return this.each(function (i) {
        var aksMultiplte = "";
        if (settings.multiple === true) {
          var aksMultiplte = "multiple";
        }
        const html =
          '<div class="aks-file-upload"><input type="file" name="' +
          customInput +
          '[]" id="' +
          customInput +
          '" hidden ' +
          aksMultiplte +
          " /></div>";
        aks.append(html);
  
        function content() {
          var content = aks.find(".aks-file-upload");
          content.append('<div class="aks-file-upload-content"></div>');
        }
        content();
  
        function label() {
          var label = aks.find(".aks-file-upload-content");
          var labelhtml =
            '<label for="' +
            customInput +
            '" class="aks-file-upload-label"><span>' +
            settings.label +
            "</span></label>";
          label.append(labelhtml);
        }
        label();
  
        function error(text) {
          var error = aks.find(".aks-file-upload");
          var errorhtml = '<div class="aks-file-upload-error">' + text + "</div>";
          error.append(errorhtml);
        }
  
        function bytesToSize(bytes) {
          var sizes = ["BYTE", "KB", "MB", "GB", "TB"];
          if (bytes == 0) return "0 BYTE";
          var i = parseInt(Math.floor(Math.log(bytes) / Math.log(1024)));
          return Math.round(bytes / Math.pow(1024, i), 2) + " " + sizes[i];
        }
  
        Object.size = function (obj) {
          var size = 0,
            key;
          for (key in obj) {
            if (obj.hasOwnProperty(key)) size++;
          }
          return size;
        };
        var data = {};
        var dataDifferent = {};
        var formData = new FormData();
        function isfileUploadInput(fileTarget) {
          var fileUploadInputType = $(settings.fileUpload).attr("type");
          if (fileUploadInputType === "file") {
          } else if (fileUploadInputType === "json") {
            $(settings.fileUpload).html(JSON.stringify(dataDifferent));
          } else {
            $(settings.fileUpload).val(JSON.stringify(dataDifferent));
          }
        }
        function dataAppend(dataAppendFile) {
          var formAppend = (data["file-" + dataAppendFile.name] = dataAppendFile);
          var dataDifferentObj = {
            name: dataAppendFile.name,
            size: bytesToSize(dataAppendFile.size),
            type: dataAppendFile.name.split(".").pop().toLowerCase()
          };
          var dataDifferentAppend = (dataDifferent[
            "file-" + dataAppendFile.name
          ] = dataDifferentObj);
          formData.append("file", formAppend);
          isfileUploadInput(dataAppendFile);
        }
        function dataRemove(dataRemove) {
          delete data["file-" + dataRemove];
          delete dataDifferent["file-" + dataRemove];
          formData.append("file", data);
          isfileUploadInput();
        }
  
        function file(file) {
          dataAppend(file);
  
          var fileName = file.name;
          var fileSize = bytesToSize(file.size);
          var fileType = file.type;
          var fileTypeExtension = file.name.split(".").pop().toLowerCase();
          var fileTypeisExtension =
            settings.fileType.indexOf(fileTypeExtension) > -1;
          var fileTypeAdd = "";
  
          function allOkey() {
            if (fileType === "image/png") {
              var fileTypeAdd = "png";
            }
            var fileIcon = "";
            if (file.type.match("image.*")) {
              var fileIcon =
                '<svg width="22" height="22" viewBox="0 0 101 121" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient id="aksimageicona" x1=".5" x2=".5" y2="1"><stop stop-color="#36D2AD" offset="0"/><stop stop-color="#2DBC9A" offset="1"/></linearGradient><filter id="aksimageiconb" color-interpolation-filters="sRGB" filterUnits="userSpaceOnUse"><feFlood flood-opacity="0" result="BackgroundImageFix"/><feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/><feOffset dx="0" dy="-2"/><feGaussianBlur stdDeviation="1"/><feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.09019608 0"/><feBlend in2="BackgroundImageFix" result="effect0_dropShadow"/><feBlend in="SourceGraphic" in2="effect0_dropShadow" result="shape"/></filter></defs><g transform="translate(.5 .5)"><g fill-rule="evenodd"><path d="m60 0 40 40v66c0 7.732-6.268 14-14 14h-72c-7.732 0-14-6.268-14-14v-92c0-7.732 6.268-14 14-14h46z" fill="url(#aksimageicona)" fill-opacity=".8"/><path transform="matrix(-1 0 0 -1 100 40)" d="M0 0L25.2929 0C33.0249 0 40 6.97512 40 14.7071L40 40L0 0Z" fill="#fff" fill-opacity=".4" filter="url(#aksimageiconb)"/></g><g transform="translate(20 50)"><path d="m42.224 0h-40.002c-1.2274 0-2.2223 0.99512-2.2223 2.2227v35.556c0 1.2269 0.9949 2.2209 2.2223 2.2209h40.002c1.2274 0 2.2223-0.994 2.2223-2.2209v-35.556c0-1.2276-0.995-2.2227-2.2223-2.2227zm-4.4449 33.334h-31.112v-11.111l6.6669-6.6674 11.112 11.112 6.6667-6.6678 6.667 6.6678v6.6663zm-4.4447-17.778c-2.4547 0-4.4444-1.9895-4.4444-4.4442 0-2.4556 1.9897-4.4445 4.4444-4.4445s4.4447 1.9889 4.4447 4.4445c0 2.4547-1.9899 4.4442-4.4447 4.4442z" fill="#fff"/></g></g></svg>';
            } else if (fileTypeExtension === "pdf") {
              var fileIcon =
                '<svg width="22" height="22" viewBox="0 0 101 121" viewbox="0 0 101 121" xmlns="http://www.w3.org/2000/svg"><defs><filter id="aksfilepdfa" color-interpolation-filters="sRGB" filterUnits="userSpaceOnUse"><feFlood flood-opacity="0" result="BackgroundImageFix"/><feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/><feOffset dx="0" dy="-2"/><feGaussianBlur stdDeviation="1"/><feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.09019608 0"/><feBlend in2="BackgroundImageFix" result="effect0_dropShadow"/><feBlend in="SourceGraphic" in2="effect0_dropShadow" result="shape"/></filter></defs><g transform="translate(.5 .5)"><path d="m60 0 40 40v66c0 7.732-6.268 14-14 14h-72c-7.732 0-14-6.268-14-14v-92c0-7.732 6.268-14 14-14h46z" fill="#E94848" fill-rule="evenodd"/><path transform="translate(28 44)" d="m18.633 0c-2.6217 0-4.7777 2.1561-4.7777 4.7778 0 3.2592 1.8108 7.3053 3.7177 11.108-1.4906 4.6659-3.182 9.6661-5.3452 13.885-4.4275 1.7373-8.376 3.0285-10.75 4.942-0.03701 0.0379-0.0719 0.0778-0.10451 0.1195-0.86749 0.8871-1.3736 2.095-1.3736 3.3892 0 2.6217 2.1561 4.7778 4.7778 4.7778 1.2785 0 2.5124-0.4771 3.4042-1.3885 0.03087-0.0237 0.06075-0.0486 0.08959-0.0747 1.7475-2.0866 3.8079-5.8718 5.6438-9.3316 4.2311-1.6644 8.6656-3.358 12.945-4.3746 3.1238 2.5175 7.643 4.1805 11.362 4.1805 2.6217 0 4.7778-2.1561 4.7778-4.7778s-2.1561-4.7777-4.7778-4.7777c-2.9825 0-7.3166 1.0646-10.63 2.1798-2.6861-2.5216-5.154-5.671-6.9278-9.018 1.2673-3.9042 2.7472-7.8106 2.7472-10.84 0-2.6217-2.156-4.7778-4.7778-4.7778zm0 2.8667c1.0725 0 1.9111 0.83865 1.9111 1.9111 0 1.434-0.7679 4.0742-1.6572 6.9128-1.1885-2.7614-2.165-5.4108-2.165-6.9128 0-1.0725 0.8387-1.9111 1.9111-1.9111zm0.8212 16.349c1.437 2.2858 3.12 4.4127 4.957 6.3007-2.8334 0.7748-5.6005 1.7675-8.3313 2.807 1.3189-2.9769 2.3748-6.0659 3.3743-9.1077zm18.768 6.1066c1.0725 0 1.9111 0.8387 1.9111 1.9111 0 1.0725-0.8386 1.9111-1.9111 1.9111-2.153 0-5.2131-0.9719-7.6594-2.3291 2.808-0.794 5.8719-1.4931 7.6594-1.4931zm-28.517 8.5552c-1.3436 2.3983-2.6791 4.6368-3.6132 5.7632-0.3191 0.3051-0.74358 0.4927-1.3139 0.4927-1.0725 0-1.9111-0.8387-1.9111-1.9111 0-0.5047 0.21449-1.0059 0.50764-1.3288 1.1208-0.8674 3.5592-1.9068 6.3306-3.016z" fill="#fff"/><path transform="matrix(-1 0 0 -1 100 40)" d="M0 0L25.2929 0C33.0249 0 40 6.97512 40 14.7071L40 40L0 0Z" fill="#fff" fill-opacity=".4" fill-rule="evenodd" filter="url(#aksfilepdfa)"/></g></svg>';
            } else if (fileTypeExtension === "docx") {
              var fileIcon =
                '<svg width="22" height="22" viewbox="0 0 101 121" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient id="aksfiledocxa" x1=".5" x2=".5" y2="1"><stop stop-color="#5895FF" offset="0"/><stop stop-color="#387CF4" offset="1"/></linearGradient><filter id="aksfiledocxb" color-interpolation-filters="sRGB" filterUnits="userSpaceOnUse"><feFlood flood-opacity="0" result="BackgroundImageFix"/><feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/><feOffset dx="0" dy="-2"/><feGaussianBlur stdDeviation="1"/><feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.09019608 0"/><feBlend in2="BackgroundImageFix" result="effect0_dropShadow"/><feBlend in="SourceGraphic" in2="effect0_dropShadow" result="shape"/></filter></defs><g transform="translate(.5 .5)" fill-rule="evenodd"><path id="aksfiledocxc" d="m60 0 40 40v66c0 7.732-6.268 14-14 14h-72c-7.732 0-14-6.268-14-14v-92c0-7.732 6.268-14 14-14h46z" fill="url(#aksfiledocxa)"/><path transform="matrix(-1 0 0 -1 100 40)" d="M0 0L25.2929 0C33.0249 0 40 6.97512 40 14.7071L40 40L0 0Z" fill="#fff" fill-opacity=".4" filter="url(#aksfiledocxb)"/><path transform="translate(20 55)" d="m0 5v-5h40v5h-40zm0 10v-5h40v5h-40zm0 10v-5h40v5h-40zm0 10v-5h20v5h-20z" fill="#fff"/></g></svg>';
            } else if (fileTypeExtension === "xls") {
              var fileIcon =
                '<svg width="22" height="22" viewbox="0 0 101 121" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient id="aksfilexsla" x1=".5" x2=".5" y2="1"><stop stop-color="#1ABF74" offset="0"/><stop stop-color="#009F57" offset="1"/></linearGradient><filter id="aksfilexslb" color-interpolation-filters="sRGB" filterUnits="userSpaceOnUse"><feFlood flood-opacity="0" result="BackgroundImageFix"/><feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/><feOffset dx="0" dy="-2"/><feGaussianBlur stdDeviation="1"/><feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.09019608 0"/><feBlend in2="BackgroundImageFix" result="effect0_dropShadow"/><feBlend in="SourceGraphic" in2="effect0_dropShadow" result="shape"/></filter></defs><g transform="translate(.5 .5)"><g fill-rule="evenodd"><path id="aksfilexslc" d="m60 0 40 40v66c0 7.732-6.268 14-14 14h-72c-7.732 0-14-6.268-14-14v-92c0-7.732 6.268-14 14-14h46z" fill="url(#aksfilexsla)"/><path transform="matrix(-1 0 0 -1 100 40)" d="M0 0L25.2929 0C33.0249 0 40 6.97512 40 14.7071L40 40L0 0Z" fill="#fff" fill-opacity=".4" filter="url(#aksfilexslb)"/></g><g transform="translate(20 50)"><path transform="translate(.013403 .015928)" d="m39.95 0.032144v-0.032144h-39.95v3.3292h0.011709v6.5435h-0.011709v3.3292h0.011709v10.059h-0.0091838v3.3292h0.0091838v10.059h-0.0068879v3.3292h0.0068879v0.0041h3.3292v-0.0041h10.033v0.0041h3.3292v-0.0041h6.5894v0.0041h3.3291v-0.0041h10.01v0.0041h3.3292v-39.95h-0.0117zm-3.3175 3.297h-33.291v6.5435h33.291v-6.5435zm0 9.8726h-10.01v10.059h10.01v-10.059zm0 13.388h-10.01v10.059h10.01v-10.059zm-13.34 10.059v-10.059h-6.5894v10.059h6.5894zm-9.9186 0v-10.059h-10.033v10.059h10.033zm-10.033-13.388h10.033v-10.059h-10.033v10.059zm13.363-10.059v10.059h6.5894v-10.059h-6.5894z" fill="#fff" fill-rule="evenodd"/></g></g></svg>';
            } else if (fileTypeExtension === "ppt") {
              var fileIcon =
                '<svg width="22" height="22" viewbox="0 0 101 121" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient id="aksfileppta" x1=".5" x2=".5" y2="1"><stop stop-color="#FD7541" offset="0"/><stop stop-color="#EB5F29" offset="1"/></linearGradient><filter id="aksfilepptb" color-interpolation-filters="sRGB" filterUnits="userSpaceOnUse"><feFlood flood-opacity="0" result="BackgroundImageFix"/><feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/><feOffset dx="0" dy="-2"/><feGaussianBlur stdDeviation="1"/><feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.09019608 0"/><feBlend in2="BackgroundImageFix" result="effect0_dropShadow"/><feBlend in="SourceGraphic" in2="effect0_dropShadow" result="shape"/></filter></defs><g transform="translate(.5 .5)" fill-rule="evenodd"><path d="m60 0 40 40v66c0 7.732-6.268 14-14 14h-72c-7.732 0-14-6.268-14-14v-92c0-7.732 6.268-14 14-14h46z" fill="url(#aksfileppta)"/><path id="Path" transform="matrix(-1 0 0 -1 100 40)" d="M0 0L25.2929 0C33.0249 0 40 6.97512 40 14.7071L40 40L0 0Z" fill="#fff" fill-opacity=".4" filter="url(#aksfilepptb)"/><g transform="translate(20 50)" fill="#fff"><path id="aksfilepptc" transform="translate(.013348 2.901)" d="m18.541 0c-10.242 0-18.541 8.3026-18.541 18.541 0 10.238 8.3026 18.541 18.541 18.541 10.238 0 18.545-8.3026 18.545-18.545h-18.545v-18.536z" fill-opacity=".4"/><path transform="translate(21.442 .0088988)" d="m5.0584e-15 0v18.545h18.541c0.0044-10.242-8.2981-18.545-18.541-18.545h5.0584e-15z"/></g></g></svg>';
            } else if (fileTypeExtension === "html") {
              var fileIcon =
                '<svg width="22" height="22" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><polygon points="32 0 72.8 460.8 256 512 439.14 460.83 480 0" fill="#FF5722"/><polygon points="391.52 150.69 256 150.69 176.8 150.69 181.92 208.58 256 208.58 386.4 208.58 371.01 382.14 256 414.24 255.9 414.27 140.96 382.14 132.93 291.36 189.25 291.36 193.44 338.46 255.94 355.46 256 355.42 256 355.42 318.56 338.43 325.09 265.12 256 265.12 256 265.12 130.62 265.12 115.46 94.208 256 94.208 396.51 94.208" fill="#FAFAFA"/></svg>';
            } else if (fileTypeExtension === "css") {
              var fileIcon =
                '<svg width="22" height="22" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg"><polygon points="32 0 72.8 460.8 256 512 439.14 460.83 480 0" fill="#2196F3"/><polygon points="392.77 150.69 387.62 208.58 372.06 382.11 256 414.21 255.9 414.24 139.9 382.11 131.81 291.36 188.64 291.36 192.86 338.43 255.94 355.46 255.97 355.42 319.14 338.4 327.74 259.97 129.09 260.51 123.46 206.88 332.51 204.42 336.74 147.01 117.86 147.62 114.18 94.208 256 94.208 397.82 94.208" fill="#FAFAFA"/></svg>';
            } else if (fileTypeExtension === "js") {
              var fileIcon =
                '<svg width="22" height="22" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1052 1052"><path fill="#f0db4f" d="M0 0h1052v1052H0z"/><path d="M965.9 801.1c-7.7-48-39-88.3-131.7-125.9-32.2-14.8-68.1-25.399-78.8-49.8-3.8-14.2-4.3-22.2-1.9-30.8 6.9-27.9 40.2-36.6 66.6-28.6 17 5.7 33.1 18.801 42.8 39.7 45.4-29.399 45.3-29.2 77-49.399-11.6-18-17.8-26.301-25.4-34-27.3-30.5-64.5-46.2-124-45-10.3 1.3-20.699 2.699-31 4-29.699 7.5-58 23.1-74.6 44-49.8 56.5-35.6 155.399 25 196.1 59.7 44.8 147.4 55 158.6 96.9 10.9 51.3-37.699 67.899-86 62-35.6-7.4-55.399-25.5-76.8-58.4-39.399 22.8-39.399 22.8-79.899 46.1 9.6 21 19.699 30.5 35.8 48.7 76.2 77.3 266.899 73.5 301.1-43.5 1.399-4.001 10.6-30.801 3.199-72.101zm-394-317.6h-98.4c0 85-.399 169.4-.399 254.4 0 54.1 2.8 103.7-6 118.9-14.4 29.899-51.7 26.2-68.7 20.399-17.3-8.5-26.1-20.6-36.3-37.699-2.8-4.9-4.9-8.7-5.601-9-26.699 16.3-53.3 32.699-80 49 13.301 27.3 32.9 51 58 66.399 37.5 22.5 87.9 29.4 140.601 17.3 34.3-10 63.899-30.699 79.399-62.199 22.4-41.3 17.6-91.3 17.4-146.6.5-90.2 0-180.4 0-270.9z" fill="#323330"/></svg>';
            } else if (fileTypeExtension === "py") {
              var fileIcon =
                '<svg width="22" height="22" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M512 256c0 25.976-3.866 51.054-11.065 74.679 0 .01 0 .01-.01.021a254.947 254.947 0 01-37.345 75.149v.01c-23.27 32.172-53.844 58.723-89.276 77.218a253.049 253.049 0 01-32.507 14.19 253.178 253.178 0 01-27.961 8.171h-.01C295.236 509.733 275.895 512 256 512c-41.535 0-80.75-9.885-115.43-27.439-32.423-16.405-60.886-39.508-83.55-67.49-20.605-25.412-36.425-54.847-46.122-86.946C3.814 306.667 0 281.778 0 256 0 114.615 114.615 0 256 0s256 114.615 256 256z" fill="#264d6f"/><path d="M372.12 111.783V238.07c0 29.727-24.095 53.823-53.823 53.823H188.928c-37.397 0-67.709 30.323-67.709 67.72v62.025H78.921c-7.659 0-15.015-1.515-21.901-4.566-20.605-25.412-36.425-54.847-46.122-86.946-.763-7.92-1.16-16.374-1.16-25.36 0-78.461 30.981-116.872 69.183-116.872H256.71v-18.223H138.386v-57.887c0-29.393 52.328-53.227 116.872-53.227S372.12 82.39 372.12 111.783z" fill="#3876ac"/><circle cx="189.325" cy="116.621" r="21.506" fill="#f2f2f2"/><path d="M502.951 298.026c0 11.786-.7 22.674-2.017 32.653 0 .01 0 .01-.01.021a254.947 254.947 0 01-37.345 75.149v.01c-9.028 6.029-19.132 9.028-29.8 9.028H255.99v18.233h118.314v49.957a253.049 253.049 0 01-32.507 14.19 253.178 253.178 0 01-27.961 8.171h-.01C295.236 509.733 275.895 512 256 512c-41.535 0-80.75-9.885-115.43-27.439V364.722c0-29.727 24.106-53.833 53.833-53.833h129.369c37.397 0 67.709-30.313 67.709-67.709v-62.025h42.297c38.202-.001 69.173 37.615 69.173 116.871z" fill="#f7cd00"/><path d="M344.879 486.17c0 4.065-1.128 7.868-3.082 11.097a253.178 253.178 0 01-27.961 8.171h-.01c-7.084-3.511-11.954-10.825-11.954-19.268 0-11.88 9.624-21.504 21.504-21.504 11.879 0 21.503 9.624 21.503 21.504z" fill="#f2f2f2"/></svg>';
            } else if (fileTypeExtension === "apk") {
              var fileIcon =
                '<svg fill="#78c257" width="22" height="22" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 553.05 553.05"><path d="M76.77 179.14c-9.52 0-17.61 3.32-24.26 9.97-6.64 6.65-9.97 14.62-9.97 23.93v142.91c0 9.54 3.33 17.62 9.97 24.27 6.65 6.64 14.73 9.97 24.26 9.97 9.53 0 17.56-3.32 24.1-9.97 6.53-6.65 9.8-14.73 9.8-24.27V213.04c0-9.31-3.31-17.28-9.96-23.93-6.65-6.65-14.63-9.97-23.94-9.97zM351.97 50.85l23.6-43.54c1.55-2.88 1-5.09-1.66-6.64-2.88-1.34-5.1-.66-6.64 1.99l-23.93 43.88a163.4 163.4 0 00-66.8-13.97c-23.5 0-45.77 4.66-66.82 13.97L185.8 2.66c-1.56-2.65-3.77-3.33-6.65-2-2.66 1.57-3.21 3.77-1.66 6.65l23.6 43.54c-23.93 12.2-42.99 29.2-57.17 51.02-14.18 21.83-21.27 45.7-21.27 71.63h307.43c0-25.93-7.1-49.79-21.28-71.63-14.18-21.83-33.13-38.82-56.83-51.02zm-136.43 63.32a12.46 12.46 0 01-9.14 3.83 11.9 11.9 0 01-8.98-3.83 12.74 12.74 0 01-3.65-9.14c0-3.54 1.22-6.59 3.65-9.14 2.44-2.54 5.43-3.82 8.98-3.82s6.59 1.28 9.14 3.82a12.5 12.5 0 013.82 9.14c0 3.55-1.28 6.59-3.82 9.14zm140.09 0a11.92 11.92 0 01-8.98 3.83c-3.55 0-6.6-1.28-9.14-3.83a12.44 12.44 0 01-3.82-9.14c0-3.54 1.27-6.59 3.82-9.14a12.48 12.48 0 019.14-3.82c3.55 0 6.53 1.28 8.98 3.82a12.77 12.77 0 013.65 9.14c0 3.55-1.22 6.59-3.65 9.14zM123.97 406.8c0 10.2 3.54 18.84 10.63 25.93 7.1 7.09 15.73 10.63 25.93 10.63h24.6l.33 75.45c0 9.53 3.32 17.62 9.97 24.27s14.62 9.97 23.93 9.97c9.52 0 17.6-3.32 24.26-9.97s9.97-14.74 9.97-24.27v-75.44h45.86v75.44c0 9.53 3.32 17.62 9.97 24.27s14.73 9.97 24.26 9.97c9.52 0 17.61-3.32 24.26-9.97s9.97-14.74 9.97-24.27v-75.44h24.93c9.96 0 18.49-3.55 25.59-10.64 7.09-7.08 10.63-15.72 10.63-25.92V185.45H123.97V406.8zM476.27 179.14c-9.3 0-17.28 3.28-23.93 9.8-6.64 6.55-9.96 14.58-9.96 24.1v142.91c0 9.54 3.32 17.62 9.96 24.27s14.63 9.97 23.93 9.97c9.53 0 17.62-3.32 24.26-9.97s9.97-14.73 9.97-24.27V213.04c0-9.52-3.32-17.55-9.97-24.1-6.64-6.53-14.73-9.8-24.25-9.8z"/></svg>';
            } else if (fileTypeExtension === "psd") {
              var fileIcon =
                '<svg width="22" height="22" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 96 107"><g fill-rule="evenodd"><path d="M95.77 106.36H14V0h56.22l25.55 25.32v81.04z" fill="#003C4A"/><path d="M92.28 28.06H68V4l24.28 24.06z" fill="#00CBFF"/><path d="M4 16h47l.4.02.38.06q.2.04.38.1.19.05.37.12l.36.17.33.2q.17.11.32.24.15.12.29.26.14.14.26.3.13.14.24.3l.2.34.17.36.13.37.1.38.05.39.02.39v20l-.02.4-.06.38q-.04.2-.1.38-.05.19-.12.37l-.17.36-.2.33q-.11.17-.24.32-.12.15-.26.29-.14.14-.3.26-.14.13-.3.24l-.34.2-.36.17-.37.13-.38.1-.39.05L51 44H4l-.4-.02-.38-.06q-.2-.04-.38-.1-.19-.05-.37-.12l-.36-.17-.33-.2q-.17-.11-.32-.24-.15-.12-.29-.26-.14-.14-.26-.3-.13-.14-.24-.3l-.2-.34-.17-.36-.13-.37-.1-.38-.05-.39L0 40V20l.02-.4.06-.38q.04-.2.1-.38.05-.19.12-.37l.17-.36.2-.33q.11-.17.24-.32.12-.15.26-.29.14-.14.3-.26.14-.13.3-.24l.34-.2.36-.17.37-.13.38-.1.39-.05L4 16z" fill="#002C36"/><path d="M19.78 32.5V37h-2.64V24.2h5c.96 0 1.8.18 2.53.53.73.35 1.3.85 1.68 1.5.4.65.6 1.38.6 2.2 0 1.26-.44 2.25-1.3 2.98a5.36 5.36 0 01-3.56 1.08h-2.31zm0-2.14h2.35c.7 0 1.23-.17 1.6-.5.37-.32.55-.8.55-1.4 0-.63-.19-1.14-.55-1.52a2.07 2.07 0 00-1.53-.6h-2.42v4.02zm15.18 3.28c0-.5-.18-.88-.53-1.14a6.92 6.92 0 00-1.9-.85c-.91-.3-1.64-.59-2.17-.87-1.45-.79-2.18-1.85-2.18-3.18 0-.69.2-1.3.58-1.85.4-.54.95-.96 1.68-1.27.73-.3 1.55-.45 2.46-.45.91 0 1.73.16 2.44.5a3.67 3.67 0 012.26 3.46h-2.63c0-.6-.19-1.05-.56-1.37a2.28 2.28 0 00-1.55-.5c-.65 0-1.15.14-1.5.42-.36.27-.54.63-.54 1.07 0 .42.2.77.63 1.05a7.1 7.1 0 001.85.79 8 8 0 013.27 1.68c.69.67 1.03 1.5 1.03 2.5 0 1.1-.42 1.97-1.25 2.6a5.5 5.5 0 01-3.39.95c-.98 0-1.88-.18-2.69-.54a4.26 4.26 0 01-1.85-1.49 3.8 3.8 0 01-.64-2.18h2.65c0 1.42.84 2.12 2.53 2.12.63 0 1.12-.12 1.47-.38.35-.25.53-.61.53-1.07zM66.98 56v-2c0-.56-.19-1.03-.58-1.42a1.94 1.94 0 00-1.42-.58H40.97c-.54 0-1 .2-1.39.58-.39.39-.58.86-.58 1.42v7.98c0 .57.2 1.04.58 1.43.39.38.85.58 1.39.58h24.01c.56 0 1.04-.2 1.42-.58.4-.39.58-.86.58-1.43v-2h2V68h-20v22c0 .54.2 1.01.58 1.41.4.4.87.6 1.43.6h4c.55 0 1.01-.2 1.41-.6.4-.4.6-.87.6-1.4V72h16V56h-6.02z" fill="#00CBFF"/></g></svg>';
            } else if (fileTypeExtension === "sql") {
              var fileIcon =
                '<svg width="22" height="22" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M128 0a32 32 0 00-32 32v448a32 32 0 0032 32h320a32 32 0 0032-32V128L352 0H128z" fill="#e2e5e7"/><path d="M384 128h96L352 0v96a32 32 0 0032 32z" fill="#b0b7bd"/><path fill="#cad1d8" d="M480 224l-96-96h96z"/><path d="M416 416a16 16 0 01-16 16H48a16 16 0 01-16-16V256a16 16 0 0116-16h352a16 16 0 0116 16v160z" fill="#f15642"/><g fill="#fff"><path d="M98.1 314.7c3-24.9 40.4-29.3 58-15.8 8.8 7-.4 18.2-8.1 12.6-9.5-6-31-8.8-33.6 4.4-3.5 21 52.2 9 51.2 43-.8 32.5-48 33.3-65.6 18.7a9.5 9.5 0 01-1.8-12.5c3.4-3.3 7-4.5 11.4-1 10.5 7.2 37.5 12.6 39.4-5.6-1.6-18.9-54.8-7.5-50.9-43.8zM265.5 369.4l2 2.4c8.5 7.7-2.5 20.3-11.1 12.2l-4.3-3.4a41.6 41.6 0 01-24.9 6.7c-22.5 0-48.2-15.5-48.2-47s25.6-47.4 48.2-47.4c23.8 0 47.1 16 47.1 47.5 0 12.1-3 21.1-8.8 29zm-7.7-29c0-20.4-16-30.7-30.6-30.7-15.7 0-31.2 10.3-31.2 30.7a31 31 0 0031.2 30.2c4.6 0 9.1-1.2 13.6-2.3l-14.6-13.5c-6.8-8.2 4-19.8 12.5-12.3l14.5 14.5c3.2-4.5 4.6-10 4.6-16.6zM293.2 303.2a8 8 0 018-7.9c4.1 0 7.6 3.6 7.6 7.9v64h34.8c12.5 0 12.8 16.8 0 16.8h-42.4c-4.4 0-8-3.2-8-7.8v-73z"/></g><path d="M400 432H96v16h304a16 16 0 0016-16v-16a16 16 0 01-16 16z" fill="#cad1d8"/></svg>';
            } else if (fileTypeExtension === "fig") {
              var fileIcon =
                '<svg width="22" height="22" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 200 300"><path d="M50 300a50 50 0 0050-50v-50H50a50 50 0 000 100z" fill="#0acf83"/><path d="M0 150a50 50 0 0150-50h50v100H50a50 50 0 01-50-50z" fill="#a259ff"/><path d="M0 50A50 50 0 0150 0h50v100H50A50 50 0 010 50z" fill="#f24e1e"/><path d="M100 0h50a50 50 0 010 100h-50V0z" fill="#ff7262"/><path d="M200 150a50 50 0 11-100 0 50 50 0 01100 0z" fill="#1abcfe"/></svg>';
            } else if (fileTypeExtension === "sketch") {
              var fileIcon =
                '<svg width="22" height="22" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 394 356"><g fill-rule="nonzero" fill="none"><path fill="#FDB300" d="M85.8 11.7L196.6 0l110.8 11.7L393.2 127l-196.6 229L0 126.8z"/><path fill="#EA6C00" d="M79.6 126.9l117 229L0 126.8zM313.6 126.9l-117 229 196.6-229z"/><path fill="#FDAD00" d="M79.6 126.9h234l-117 229z"/><g><path fill="#FDD231" d="M196.6 0L85.8 11.7 79.6 127zM196.6 0l110.8 11.7 6.2 115.2z"/><path fill="#FDAD00" d="M393.2 126.9L307.4 11.7l6.2 115.2zM0 126.9L85.8 11.7 79.6 127z"/><path fill="#FEEEB7" d="M196.6 0l-117 126.9h234z"/></g></g></svg>';
            } else if (fileTypeExtension === "ai") {
              var fileIcon =
                '<svg width="22" height="22"  xmlns="http://www.w3.org/2000/svg" viewBox="0 0 96 107"><g fill-rule="evenodd"><path d="M95.77 106.36H14V0h56.22l25.55 25.32v81.04z" fill="#D07012"/><path d="M92.28 28.06H68V4l24.28 24.06z" fill="#FFAD5D"/><path d="M4 16h47l.4.02.38.06q.2.04.38.1.19.05.37.12l.36.17.33.2q.17.11.32.24.15.12.29.26.14.14.26.3.13.14.24.3l.2.34.17.36.13.37.1.38.05.39.02.39v20l-.02.4-.06.38q-.04.2-.1.38-.05.19-.12.37l-.17.36-.2.33q-.11.17-.24.32-.12.15-.26.29-.14.14-.3.26-.14.13-.3.24l-.34.2-.36.17-.37.13-.38.1-.39.05L51 44H4l-.4-.02-.38-.06q-.2-.04-.38-.1-.19-.05-.37-.12l-.36-.17-.33-.2q-.17-.11-.32-.24-.15-.12-.29-.26-.14-.14-.26-.3-.13-.14-.24-.3l-.2-.34-.17-.36-.13-.37-.1-.38-.05-.39L0 40V20l.02-.4.06-.38q.04-.2.1-.38.05-.19.12-.37l.17-.36.2-.33q.11-.17.24-.32.12-.15.26-.29.14-.14.3-.26.14-.13.3-.24l.34-.2.36-.17.37-.13.38-.1.39-.05L4 16z" fill="#A75402"/><path d="M27.37 33.36h-4.63L21.87 36h-2.8l4.76-12.8h2.44L31.06 36h-2.8l-.9-2.64zm-3.91-2.13h3.2l-1.61-4.8-1.6 4.8zM34.34 36h-2.55v-9.51h2.55V36zm-2.7-11.97c0-.38.12-.7.38-.94.25-.25.6-.37 1.04-.37.43 0 .78.12 1.04.37.26.24.39.56.39.94 0 .39-.14.7-.4.95-.26.24-.6.37-1.03.37-.43 0-.77-.13-1.03-.37-.26-.25-.4-.56-.4-.95zM66.98 51c.84 0 1.56.3 2.14.88.59.58.88 1.29.88 2.1 0 .85-.3 1.56-.88 2.14-.58.57-1.3.86-2.14.86a3.15 3.15 0 01-1.3-.28l-7.35 7.38.67.91a30 30 0 0115-4l1.98.06v4.01L74 65a25.76 25.76 0 00-7.46 1.07c-1.17.34-2.3.77-3.4 1.29a29.3 29.3 0 00-3.17 1.72 7.8 7.8 0 01-2.3 5.6 7.9 7.9 0 01-5.61 2.31c-.63 1-1.2 2.06-1.72 3.16a23.4 23.4 0 00-1.29 3.41A27.81 27.81 0 0048 91.01l.07 1.97h-4L43.97 91a28.93 28.93 0 011.08-7.93A29.85 29.85 0 0147.99 76l-.91-.67-7.38 7.35a3.24 3.24 0 01.28 1.3c0 .84-.3 1.56-.86 2.14-.58.59-1.29.88-2.13.88-.82 0-1.53-.3-2.11-.88a2.92 2.92 0 01-.88-2.14c0-.82.3-1.53.88-2.11a2.88 2.88 0 012.1-.88c.24 0 .47.02.7.07.22.05.42.13.6.24l7.4-7.41a7.26 7.26 0 01-1.26-2.25 7.98 7.98 0 011.92-8.3 8.16 8.16 0 012.55-1.72 7.98 7.98 0 015.75-.2c.84.3 1.59.71 2.25 1.25l7.41-7.38c-.11-.19-.2-.4-.24-.62a3.32 3.32 0 01-.07-.68c0-.82.3-1.53.88-2.11a2.88 2.88 0 012.1-.88zM52 65c-1.1 0-2.04.38-2.83 1.17A3.86 3.86 0 0047.99 69c0 1.1.4 2.04 1.18 2.83A3.86 3.86 0 0052 73.01c1.1 0 2.04-.4 2.83-1.18A3.86 3.86 0 0056.01 69c0-1.1-.4-2.04-1.18-2.83A3.86 3.86 0 0052 64.99z" fill="#FFAD5D"/></g></svg>';
            } else if (fileTypeExtension === "aep") {
              var fileIcon =
                '<svg width="22" height="22" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 96 107"><g fill-rule="evenodd"><path d="M95.77 106.36H14V0h56.22l25.55 25.32v81.04z" fill="#4D008D"/><path d="M92.28 28.06H68V4l24.28 24.06z" fill="#DBA7FF"/><path d="M4 16h47l.4.02.38.06q.2.04.38.1.19.05.37.12l.36.17.33.2q.17.11.32.24.15.12.29.26.14.14.26.3.13.14.24.3l.2.34.17.36.13.37.1.38.05.39.02.39v20l-.02.4-.06.38q-.04.2-.1.38-.05.19-.12.37l-.17.36-.2.33q-.11.17-.24.32-.12.15-.26.29-.14.14-.3.26-.14.13-.3.24l-.34.2-.36.17-.37.13-.38.1-.39.05L51 44H4l-.4-.02-.38-.06q-.2-.04-.38-.1-.19-.05-.37-.12l-.36-.17-.33-.2q-.17-.11-.32-.24-.15-.12-.29-.26-.14-.14-.26-.3-.13-.14-.24-.3l-.2-.34-.17-.36-.13-.37-.1-.38-.05-.39L0 40V20l.02-.4.06-.38q.04-.2.1-.38.05-.19.12-.37l.17-.36.2-.33q.11-.17.24-.32.12-.15.26-.29.14-.14.3-.26.14-.13.3-.24l.34-.2.36-.17.37-.13.38-.1.39-.05L4 16z" fill="#2C0050"/><path d="M24.37 34.36h-4.63L18.87 37h-2.8l4.76-12.8h2.44L28.06 37h-2.8l-.9-2.64zm-3.91-2.13h3.2l-1.61-4.8-1.6 4.8zm16.06-.78h-5.06v3.43h5.94V37h-8.58V24.2h8.56v2.14h-5.92v3.05h5.06v2.06zM39 53h19.98v4H39v19.98H35V57c0-1.13.39-2.08 1.16-2.85A3.87 3.87 0 0139.01 53zM47 60.98h20v4H47V85h-4.01V65c0-1.1.4-2.05 1.18-2.83a3.86 3.86 0 012.83-1.18zM55 69h16c1.1 0 2.04.38 2.83 1.16A3.84 3.84 0 0175.01 73v16c0 1.1-.4 2.04-1.18 2.83A3.86 3.86 0 0171 93.01H55c-1.12 0-2.07-.4-2.84-1.18A3.89 3.89 0 0151 89V73c0-1.12.38-2.07 1.16-2.84A3.87 3.87 0 0155 69z" fill="#DBA7FF"/></g></svg>';
            } else if (fileTypeExtension === "php") {
              var fileIcon =
                '<svg width="22" height="22" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><path d="M512 256c0 15.48-1.38 30.65-4.01 45.37C486.58 421.12 381.9 512 256 512c-94.86 0-177.66-51.59-221.88-128.24a254 254 0 01-25.1-60.16A255.84 255.84 0 010 256C0 114.62 114.61 0 256 0c116.7 0 215.14 78.08 245.98 184.84A256.23 256.23 0 01512 256z" fill="#8f9ed1"/><g fill="#f2f2f2"><path d="M130.17 178.24H35.9L9.03 323.6a254 254 0 0025.09 60.15h8.74l10.4-56.3h51.82c63.08 0 80.03-56.63 84.1-84.45a57.7 57.7 0 00-59-64.77zm13.68 69.46c-2.3 15.77-13.96 47.88-49.71 47.88H59.15l15.63-84.6h35.6c34.7 0 35.77 20.96 33.46 36.72zM501.98 184.84c-8.02-4.14-17.57-6.6-28.6-6.6H379.1l-37.98 205.52h44.95l10.4-56.3h51.81c28.06 0 46.99-11.2 59.7-26.09A257.37 257.37 0 00512 256c0-24.7-3.5-48.57-10.02-71.16zm-14.92 62.86c-2.31 15.77-13.96 47.88-49.73 47.88h-34.96l15.63-84.6h35.6c34.7 0 35.77 20.96 33.46 36.72zM309.24 178.92h-54.6l10.25-55.45h-44.77l-37.98 205.51h44.77l21.84-118.18h28.6c19 0 31.89 4.07 29.17 21.7-2.7 17.64-18.3 95.64-18.3 95.64h45.43S351.3 241.32 354 216.9c2.72-24.42-19.67-37.98-44.76-37.98z"/></g></svg>';
            } else if (fileTypeExtension === "csv") {
              var fileIcon =
                '<svg width="22" height="22" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 96 107"><g fill-rule="evenodd"><path d="M95.77 106.36H14V0h56.22l25.55 25.32v81.04z" fill="#79A92E"/><path d="M92.28 27.06H68V3l24.28 24.06z" fill="#99CD48"/><path d="M4 16h47l.4.02.38.06q.2.04.38.1.19.05.37.12l.36.17.33.2q.17.11.32.24.15.12.29.26.14.14.26.3.13.14.24.3l.2.34.17.36.13.37.1.38.05.39.02.39v20l-.02.4-.06.38q-.04.2-.1.38-.05.19-.12.37l-.17.36-.2.33q-.11.17-.24.32-.12.15-.26.29-.14.14-.3.26-.14.13-.3.24l-.34.2-.36.17-.37.13-.38.1-.39.05L51 44H4l-.4-.02-.38-.06q-.2-.04-.38-.1-.19-.05-.37-.12l-.36-.17-.33-.2q-.17-.11-.32-.24-.15-.12-.29-.26-.14-.14-.26-.3-.13-.14-.24-.3l-.2-.34-.17-.36-.13-.37-.1-.38-.05-.39L0 40V20l.02-.4.06-.38q.04-.2.1-.38.05-.19.12-.37l.17-.36.2-.33q.11-.17.24-.32.12-.15.26-.29.14-.14.3-.26.14-.13.3-.24l.34-.2.36-.17.37-.13.38-.1.39-.05L4 16z" fill="#658C28"/><path d="M21.19 32.74a4.53 4.53 0 01-1.53 3.25 5.36 5.36 0 01-3.62 1.19 4.82 4.82 0 01-3.87-1.66c-.94-1.1-1.41-2.62-1.41-4.55v-.78c0-1.23.21-2.32.65-3.25a4.87 4.87 0 014.66-2.91c1.48 0 2.67.4 3.57 1.18.9.8 1.43 1.9 1.57 3.33h-2.64c-.07-.82-.3-1.42-.7-1.8-.39-.36-.99-.55-1.8-.55-.88 0-1.53.31-1.97.94a5.3 5.3 0 00-.67 2.94v.96c0 1.39.2 2.4.63 3.03.42.64 1.08.96 1.98.96.81 0 1.42-.18 1.82-.56.4-.37.63-.94.7-1.72h2.63zm7.93.9c0-.5-.17-.88-.52-1.14a6.92 6.92 0 00-1.9-.85c-.92-.3-1.64-.59-2.17-.87-1.46-.79-2.18-1.85-2.18-3.18 0-.69.2-1.3.58-1.85.4-.54.95-.96 1.68-1.27.73-.3 1.55-.45 2.46-.45.91 0 1.73.16 2.44.5a3.67 3.67 0 012.26 3.46h-2.64c0-.6-.18-1.05-.55-1.37a2.28 2.28 0 00-1.56-.5c-.64 0-1.14.14-1.5.42-.36.27-.54.63-.54 1.07 0 .42.21.77.63 1.05a7.1 7.1 0 001.85.79 8 8 0 013.28 1.68c.69.67 1.03 1.5 1.03 2.5 0 1.1-.42 1.97-1.26 2.6a5.5 5.5 0 01-3.38.95c-.99 0-1.88-.18-2.7-.54a4.26 4.26 0 01-1.84-1.49 3.8 3.8 0 01-.64-2.18h2.65c0 1.42.84 2.12 2.53 2.12.63 0 1.11-.12 1.47-.38.35-.25.52-.61.52-1.07zm8.73.19l2.9-9.63h2.94L39.23 37h-2.75l-4.44-12.8h2.93l2.88 9.63zM73.56 57H59.37v7.13h3.5l-7.06 5.93-7.12-5.94h3.56V57H38v7.13h3.56L52.25 73l-10.69 8.88H38V89h14.25v-7.13h-3.56l7.12-5.93 7.06 5.94h-3.5V89h14.2v-7.13H70L59.37 73 70 64.12h3.56V57z" fill="#99CD48"/></g></svg>';
            } else if (file.type.match("video.*")) {
              var fileIcon =
                '<svg width="22" height="22" viewBox="0 0 101 121" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient id="aksfilevideoa" x1=".5" x2=".5" y2="1"><stop stop-color="#627CFE" offset="0"/><stop stop-color="#3042CC" offset="1"/></linearGradient><filter id="aksfilevideob" color-interpolation-filters="sRGB" filterUnits="userSpaceOnUse"><feFlood flood-opacity="0" result="BackgroundImageFix"/><feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/><feOffset dx="0" dy="-2"/><feGaussianBlur stdDeviation="1"/><feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.09019608 0"/><feBlend in2="BackgroundImageFix" result="effect0_dropShadow"/><feBlend in="SourceGraphic" in2="effect0_dropShadow" result="shape"/></filter></defs><g transform="translate(.5 .5)"><path d="m60 0 40 40v66c0 7.732-6.268 14-14 14h-72c-7.732 0-14-6.268-14-14v-92c0-7.732 6.268-14 14-14h46z" fill="url(#aksfilevideoa)" fill-opacity=".8" fill-rule="evenodd"/><path id="c" transform="matrix(-1 0 0 -1 100 40)" d="M0 0L25.2929 0C33.0249 0 40 6.97512 40 14.7071L40 40L0 0Z" fill="#fff" fill-opacity=".4" fill-rule="evenodd" filter="url(#aksfilevideob)"/><g transform="translate(20 60)" fill="#fff" fill-opacity=".99"><path transform="translate(31.016 2.5106)" d="m0 8.5787v7.7844l14.421 8.6014v-24.964l-14.421 8.5787z" fill-rule="evenodd"/><path transform="translate(.017742 .014184)" d="m32.77 1.5118e-15h-30.113c-1.4534 0-2.657 1.1801-2.657 2.6553v24.669c0 1.4525 1.1809 2.6553 2.657 2.6553h30.136c1.4534 0 2.657-1.1801 2.657-2.6553v-24.692c-0.0227-1.4525-1.2036-2.6326-2.6797-2.6326zm-21.279 24.284v-18.61l15.17 9.3049-15.17 9.305z"/></g></g></svg>';
            } else if (file.type.match("audio.*")) {
              var fileIcon =
                '<svg width="22" height="22" viewBox="0 0 101 121" viewbox="0 0 101 121" xmlns="http://www.w3.org/2000/svg"><defs><linearGradient id="aksfileaudioa" x1=".5" x2=".5" y2="1"><stop stop-color="#FFC547" offset="0"/><stop stop-color="#FFAE01" offset="1"/></linearGradient><filter id="aksfileaudiob" color-interpolation-filters="sRGB" filterUnits="userSpaceOnUse"><feFlood flood-opacity="0" result="BackgroundImageFix"/><feColorMatrix in="SourceAlpha" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/><feOffset dx="0" dy="-2"/><feGaussianBlur stdDeviation="1"/><feColorMatrix values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.09019608 0"/><feBlend in2="BackgroundImageFix" result="effect0_dropShadow"/><feBlend in="SourceGraphic" in2="effect0_dropShadow" result="shape"/></filter></defs><g transform="translate(.5 .5)"><path d="m60 0 40 40v66c0 7.732-6.268 14-14 14h-72c-7.732 0-14-6.268-14-14v-92c0-7.732 6.268-14 14-14h46z" fill="url(#aksfileaudioa)" fill-opacity=".9" fill-rule="evenodd"/><path id="c" transform="matrix(-1 0 0 -1 100 40)" d="M0 0L25.2929 0C33.0249 0 40 6.97512 40 14.7071L40 40L0 0Z" fill="#fff" fill-opacity=".4" fill-rule="evenodd" filter="url(#aksfileaudiob)"/><g transform="translate(20 50)"><path transform="translate(.013142 .013907)" d="m36.867 2.3039v26.882c0 0.8-0.2721 1.5121-0.8161 2.1361-0.5441 0.6241-1.2322 1.1081-2.0642 1.4521s-1.6601 0.6-2.4842 0.768c-0.8241 0.1681-1.5962 0.2521-2.3162 0.252-0.72 0-1.492-0.084-2.3161-0.252-0.8242-0.1679-1.6522-0.4239-2.4842-0.768-0.8321-0.3442-1.5201-0.8282-2.0642-1.4521-0.544-0.6239-0.8161-1.3359-0.8161-2.1361 0-0.8001 0.2721-1.5122 0.8161-2.1361 0.5441-0.6239 1.2321-1.1079 2.0642-1.452 0.832-0.3441 1.66-0.6002 2.4842-0.7681 0.8241-0.1679 1.5961-0.2519 2.3161-0.252 1.6801 0 3.2162 0.312 4.6083 0.9361v-12.889l-18.433 5.6884v17.017c0 0.8-0.272 1.512-0.8161 2.1361-0.544 0.624-1.2321 1.108-2.0641 1.452-0.8321 0.344-1.6602 0.6-2.4842 0.7681-0.82409 0.1681-1.5962 0.2521-2.3162 0.252s-1.4921-0.0841-2.3162-0.252c-0.82408-0.1679-1.6522-0.424-2.4842-0.7681s-1.5201-0.8281-2.0642-1.452c-0.54407-0.6239-0.81611-1.336-0.8161-2.1361 2.0374e-15 -0.8002 0.27204-1.5122 0.8161-2.1361 0.54408-0.6239 1.2321-1.1079 2.0642-1.4521 0.83205-0.3441 1.6601-0.6001 2.4842-0.768 0.82409-0.168 1.5962-0.252 2.3162-0.252 1.6801 0 3.2162 0.312 4.6082 0.936v-23.209c0-0.49602 0.152-0.94805 0.456-1.3561 0.3041-0.40803 0.6961-0.69204 1.1761-0.85204l19.969-6.1444c0.192-0.064006 0.416-0.09601 0.6721-0.09601 0.64 0 1.184 0.22402 1.6321 0.67207 0.448 0.44804 0.672 0.99206 0.672 1.6321l4e-4 -2.4e-4z" fill="#fff" fill-rule="evenodd"/></g></g></svg>';
            } else {
              var fileIcon =
                '<svg fill="white" height="22" viewBox="0 0 512 512" width="22" xmlns="http://www.w3.org/2000/svg"><path d="m106 512h300c24.814 0 45-20.186 45-45v-317h-105c-24.814 0-45-20.186-45-45v-105h-195c-24.814 0-45 20.186-45 45v422c0 24.814 20.186 45 45 45zm60-301h180c8.291 0 15 6.709 15 15s-6.709 15-15 15h-180c-8.291 0-15-6.709-15-15s6.709-15 15-15zm0 60h180c8.291 0 15 6.709 15 15s-6.709 15-15 15h-180c-8.291 0-15-6.709-15-15s6.709-15 15-15zm0 60h180c8.291 0 15 6.709 15 15s-6.709 15-15 15h-180c-8.291 0-15-6.709-15-15s6.709-15 15-15zm0 60h120c8.291 0 15 6.709 15 15s-6.709 15-15 15h-120c-8.291 0-15-6.709-15-15s6.709-15 15-15z"/><path d="m346 120h96.211l-111.211-111.211v96.211c0 8.276 6.724 15 15 15z"/></svg>';
            }
  
            function deleteButton() {
              var deleteButton =
                '<div class="aks-file-upload-delete" data-delete="' +
                fileName +
                '"><svg width="26" height="26" viewBox="0 0 26 26" xmlns="http://www.w3.org/2000/svg"><path d="M11.586 13l-2.293 2.293a1 1 0 0 0 1.414 1.414L13 14.414l2.293 2.293a1 1 0 0 0 1.414-1.414L14.414 13l2.293-2.293a1 1 0 0 0-1.414-1.414L13 11.586l-2.293-2.293a1 1 0 0 0-1.414 1.414L11.586 13z" fill="currentColor" fill-rule="nonzero"></path></svg></div>';
  
              return deleteButton;
            }
  
            function uploadButton() {
              var uploadButton =
                '<div class="aks-file-upload-btn" data-upload="' +
                fileName +
                '"><svg width="26" height="26" viewBox="0 0 26 26" xmlns="http://www.w3.org/2000/svg"><path d="M14 10.414v3.585a1 1 0 0 1-2 0v-3.585l-1.293 1.293a1 1 0 0 1-1.414-1.415l3-3a1 1 0 0 1 1.414 0l3 3a1 1 0 0 1-1.414 1.415L14 10.414zM9 18a1 1 0 0 1 0-2h8a1 1 0 0 1 0 2H9z" fill="currentColor" fill-rule="evenodd"></path></svg></div>';
  
              return uploadButton;
            }
  
            var niceButtons = "";
            var uploadbars = "";
  
            if (settings.ajaxUpload === true) {
              if (settings.ajax["directlyLoad"] === true) {
                var niceButtons = '<div style="display:none;">' + uploadButton();
                +"</div>" + deleteButton();
                var uploadbars =
                  '<div data-upload-bar="' +
                  fileName +
                  '" class="aks-uplaod-bar"></div>';
              } else {
                var niceButtons = uploadButton();
                var uploadbars =
                  '<div data-upload-bar="' +
                  fileName +
                  '" class="aks-uplaod-bar"></div>';
              }
            } else {
              var niceButtons = deleteButton();
            }
  
            if (!file.type.match("image.*")) {
              var filehtml =
                '<div data-file="' +
                fileName +
                '" data-file-type="' +
                fileTypeExtension +
                '" class="aks-file-upload-preview aks-no-preview">' +
                uploadbars +
                '<header class="aks-file-upload-p-header"><div class="aks-file-upload-p-header-icon">' +
                fileIcon +
                '</div><div class="aks-file-upload-p-header-content">' +
                '<span class="aks-file-upload-title">' +
                fileName +
                "</span>" +
                '<span class="aks-file-upload-size">' +
                fileSize +
                "</span>" +
                "</div>" +
                niceButtons +
                "</header></div>";
              var filepreview = aks.find(".aks-file-upload-content");
              $(filepreview).append(filehtml);
              $('[data-file="' + fileName + '"]').animate({ height: 55 }, 200);
              $('[data-file="' + fileName + '"]').fadeIn(650);
            } else {
              var reader = new FileReader();
              var image = new Image();
              var _URL = window.URL || window.webkitURL;
              image.onload = function (e) {
                dataDifferent["file-" + fileName].width = image.naturalWidth;
                dataDifferent["file-" + fileName].height = image.naturalHeight;
              };
              reader.onload = function (e) {
                dataDifferent["file-" + fileName].base64 = e.target.result;
                var imagehtml =
                  '<div data-file="' +
                  fileName +
                  '" data-file-type="' +
                  fileTypeExtension +
                  '" class="aks-file-upload-preview ">' +
                  uploadbars +
                  '<header class="aks-file-upload-p-header"><div class="aks-file-upload-p-header-icon">' +
                  fileIcon +
                  '</div><div class="aks-file-upload-p-header-content">' +
                  '<span class="aks-file-upload-title">' +
                  fileName +
                  "</span>" +
                  '<span class="aks-file-upload-size">' +
                  fileSize +
                  "</span>" +
                  "</div>" +
                  niceButtons +
                  '</header><main class="aks-file-upload-p-main"><div class="aks-file-upload-image"><img src="' +
                  e.target.result +
                  '" alt="' +
                  fileName +
                  '" data-file="' +
                  fileName +
                  '" class="' +
                  fileTypeAdd +
                  '" /></div></main></div>';
                var preview = aks.find(".aks-file-upload-content");
                $(preview).append(imagehtml);
                $('[data-file="' + fileName + '"]').animate({ height: 240 }, 200);
                $('[data-file="' + fileName + '"]').fadeIn(650);
              };
              image.src = _URL.createObjectURL(file);
              reader.readAsDataURL(file);
            }
          }
          function CheckFileSize() {
            var maxSize = settings.maxSize;
            var maxSizeExtension = maxSize.split(/\s+/);
            var maxSizeConvert = maxSizeExtension[0];
            var maxSizeFormat = maxSizeExtension[1].toLowerCase();
            var fileSizeExtension = bytesToSize(file.size).split(/\s+/);
            var fileSizeConvert = fileSizeExtension[0];
            var fileSizeFormat = fileSizeExtension[1].toLowerCase();
            var bytes = "";
            if (maxSizeFormat === "kb") {
              var bytes = maxSizeConvert * 1000;
            } else if (maxSizeFormat === "bytes") {
              var bytes = maxSizeConvert * 1;
            } else if (maxSizeFormat === "byte") {
              var bytes = maxSizeConvert * 1;
            } else if (maxSizeFormat === "mb") {
              var bytes = maxSizeConvert * 1000000;
            } else if (maxSizeFormat === "gb") {
              var bytes = maxSizeConvert * 1000000000;
            } else if (maxSizeFormat === "tb") {
              var bytes = maxSizeConvert * 1000000000000;
            } else {
              console.log('There is a problem with "maxSize"');
            }
            return bytes;
          }
  
          if (Object.size(dataDifferent) > settings.maxFile) {
            error(settings.maxFileError + " " + settings.maxFile);
            dataRemove(fileName);
          } else if (!fileTypeisExtension) {
            error('"' + fileTypeExtension + '" ' + settings.fileTypeError);
            dataRemove(fileName);
          } else if (file.size > CheckFileSize()) {
            error(
              '"' +
                fileName +
                '" ' +
                settings.maxSizeError +
                " " +
                settings.maxSize
            );
            dataRemove(fileName);
          } else {
            allOkey();
          }
        }
  
        var storedFiles = [];
        function fileUpload(e) {
          var files = e.files;
          var filesArr = Array.prototype.slice.call(files);
          filesArr.forEach(function (f) {
            storedFiles.push(f);
            file(f);
          });
        }
        function fileDelete() {
          $(".aks-file-upload-delete").on("click", function () {
            var deleteBtn = $(this).data("delete");
            var deleteElemet = $('[data-file="' + deleteBtn + '"]');
            $(deleteElemet).animate({ height: 0 }, 200);
            $(deleteElemet).fadeIn(650);
            $(deleteElemet).remove();
            dataRemove(deleteBtn);
          });
        }
        function ajaxUpload() {
          $(".aks-file-upload-btn").click(function () {
            var uploadBtn = $(this).data("upload");
            formData.append("file", data["file-" + uploadBtn]);
            $.ajax({
              url: settings.ajax["url"],
              type: settings.ajax["type"],
              async: settings.ajax["async"],
              data: formData,
              contentType: settings.ajax["contentType"],
              processData: settings.ajax["processData"],
              cache: settings.ajax["cache"],
              enctype: settings.ajax["enctype"],
              xhr: function () {
                var xhr = $.ajaxSettings.xhr();
                if (xhr.upload) {
                  setTimeout(function () {
                    $('[data-upload="' + uploadBtn + '"]').remove();
                  }, 40);
                  setTimeout(function () {
                    $(
                      '[data-file="' + uploadBtn + '"] .aks-file-upload-p-header'
                    ).append(
                      '<div class="aks-file-upload-delete" data-delete="' +
                        uploadBtn +
                        '"><svg width="26" height="26" viewBox="0 0 26 26" xmlns="http://www.w3.org/2000/svg"><path d="M11.586 13l-2.293 2.293a1 1 0 0 0 1.414 1.414L13 14.414l2.293 2.293a1 1 0 0 0 1.414-1.414L14.414 13l2.293-2.293a1 1 0 0 0-1.414-1.414L13 11.586l-2.293-2.293a1 1 0 0 0-1.414 1.414L11.586 13z" fill="currentColor" fill-rule="nonzero"></path></svg></div>'
                    );
                  }, 200);
                  xhr.upload.addEventListener(
                    "progress",
                    function (event) {
                      var percent = 0;
                      if (event.lengthComputable) {
                        percent = Math.ceil((event.loaded / event.total) * 100);
                      }
                      $('[data-upload-bar="' + uploadBtn + '"]').css(
                        "width",
                        percent + "%"
                      );
                    },
                    false
                  );
                }
                return xhr;
              },
              success: function (response) {
                if (response != 0) {
                  dataDifferent["file-" + uploadBtn].src = response;
                  isfileUploadInput();
                  $('[data-upload-bar="' + uploadBtn + '"]').css("width", "100%");
                } else {
                  $('[data-upload-bar="' + uploadBtn + '"]').css(
                    "background",
                    "#ff0000"
                  );
                }
              }
            });
          });
          if (settings.ajax["directlyLoad"] === true) {
            $(".aks-file-upload-btn").each(function (ss, ii) {
              $(ii).click();
            });
          }
        }
  
        if (settings.dragDrop === true) {
          var dropbox = aks.find(".aks-file-upload");
          $(dropbox).on("dragenter", function (ev) {
            $(dropbox).addClass("drop-active");
          });
          $(dropbox).on("dragover", function (ev) {
            $(dropbox).addClass("drop-active");
            ev.preventDefault();
          });
          $(dropbox).on("dragleave", function (ev) {
            $(dropbox).removeClass("drop-active");
          });
          $(dropbox).on("drop", function (ev) {
            ev.preventDefault();
            ev.stopPropagation();
            if (ev.originalEvent.dataTransfer) {
              if (ev.originalEvent.dataTransfer.files.length) {
                var droppedFiles = ev.originalEvent.dataTransfer.files;
                for (var i = 0; i < droppedFiles.length; i++) {
                  file(droppedFiles[i]);
                }
              }
            }
  
            $(dropbox).removeClass("highlightDropArea");
            return false;
          });
        }
        $(settings.input).on("change", function () {
          fileUpload(this);
        });
  
        setInterval(function () {
          fileDelete();
          if (settings.ajaxUpload === true) {
            ajaxUpload();
          }
        }, 3000);
      });
    };


  })(jQuery);
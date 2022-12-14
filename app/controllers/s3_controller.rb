require 'aws-sdk-s3'

class S3Controller < ApplicationController
  # this method would be for posting images directly to s3 bucketn - still WIP
  def direct_post
    filename = params[:myImage]
    data = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/#{filename}", success_action_status: '201',
                                    acl: 'public-read')

    render json: { url: data.url, fields: data.fields }, status: :ok
  end

  def get_images
    s3 = Aws::S3::Client.new
    keys = []
    s3.list_objects(bucket: 'fto-211122').each do |response|
      keys << response.contents.map(&:key)
    end

    render json: { keys: }
  end
end
